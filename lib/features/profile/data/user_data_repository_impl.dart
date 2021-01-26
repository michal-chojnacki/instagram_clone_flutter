import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_statuses.dart';
import 'package:instagram_clone/features/profile/data/model/raw_observing_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_users.dart';
import 'package:instagram_clone/features/profile/data/user_data_service.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@prod
@dev
@Injectable(as: UserDataRepository)
class UserDataRepositoryImpl extends UserDataRepository {
  final UserDataService _service;
  final UserMapper _userMapper;

  UserDataRepositoryImpl(this._service, this._userMapper);

  @override
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath,
      String bio, String username, String fullname) async {
    try {
      final response = await _service.updateUserData(
          'Bearer $authorizationToken', bio, username, fullname, avatarPath);
      if (response.statusCode == 200) {
        return Result.success(null);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<User>> fetchUserData(
      String authorizationToken, @nullable int userId) async {
    try {
      final response =
          await _service.getUser('Bearer $authorizationToken', userId);
      if (response.statusCode == 200) {
        final rawUser = RawUser.fromJson(response.body);
        return Result.success(_userMapper.map(rawUser));
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> changeObservation(
      String authorizationToken, User user, bool observe) async {
    try {
      final response = await _service.updateObservingStatus(
          'Bearer $authorizationToken',
          RawObservingStatus(userId: user.id, status: observe).toJson());
      if (response.statusCode == 200) {
        return Result.success(null);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<bool>> getObservation(
      String authorizationToken, User user) async {
    try {
      final response = await _service.getObservingStatus(
          'Bearer $authorizationToken', user.id);
      if (response.statusCode == 200) {
        return Result.success(
            RawObservingStatus.fromJson(response.body).status);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<User>>> fetchRecommendedUsers(
      String authorizationToken) async {
    try {
      final response =
          await _service.getRecommendedUsers('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        final rawUsers = RawUsers.fromJson(response.body);
        return Result.success(
            rawUsers.users.map((rawUser) => _userMapper.map(rawUser)).toList());
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Map<int, bool>>> getLikes(
      String authorizationToken, List<int> contentIds) async {
    try {
      final response = await _service.getLikeStatuses(
          'Bearer $authorizationToken',
          contentIds.toString().replaceAll(' ', ''));
      if (response.statusCode == 200) {
        final rawLikeStatuses = RawLikeStatuses.fromJson(response.body);
        return Result.success(rawLikeStatuses.statuses);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> changeLike(
      String authorizationToken, int contentId, bool like) async {
    try {
      final response = await _service.updateLikes('Bearer $authorizationToken',
          RawLikeStatus(contentId: contentId, status: like).toJson());
      if (response.statusCode == 200) {
        return Result.success(null);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<User>>> loadFollowees(
      String authorizationToken, int userId, int page) async {
    try {
      final response = await _service.getFollowees(
          'Bearer $authorizationToken', userId, page);
      if (response.statusCode == 200) {
        return _mapRawUsers(RawUsers.fromJson(response.body));
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<User>>> loadFollowers(
      String authorizationToken, int userId, int page) async {
    try {
      final response = await _service.getFollowers(
          'Bearer $authorizationToken', userId, page);
      if (response.statusCode == 200) {
        return _mapRawUsers(RawUsers.fromJson(response.body));
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  Result<PagedList<User>> _mapRawUsers(RawUsers response) =>
      Result.success(PagedList(
          list: response.users
              .map((rawUser) => _userMapper.map(rawUser))
              .toList(),
          page: response.page ?? 0,
          pages: response.pages ?? 1));
}
