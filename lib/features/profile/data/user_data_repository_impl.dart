import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/model/raw_observing_status.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';
import 'package:instagram_clone/features/profile/data/user_data_service.dart';

@injectable
@prod
@RegisterAs(UserDataRepository)
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
        return Result.success(data: null);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<User>> fetchUserData(String authorizationToken) async {
    try {
      final response = await _service.getUser('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        return Result.success(data: _userMapper.map(response.body));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<void>> changeObservation(
      String authorizationToken, User user, bool observe) async {
    try {
      final response = await _service.updateObservingStatus(
          'Bearer $authorizationToken',
          RawObservingStatus.create(userId: user.id, status: observe));
      if (response.statusCode == 200) {
        return Result.success(data: null);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<bool>> getObservation(
      String authorizationToken, User user) async {
    try {
      final response = await _service.getObservingStatus(
          'Bearer $authorizationToken', user.id);
      if (response.statusCode == 200) {
        return Result.success(data: response.body.status);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<List<User>>> fetchRecommendedUsers(
      String authorizationToken) async {
    try {
      final response =
          await _service.getRecommendedUsers('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        return Result.success(
            data: response.body.recommendations
                .map((rawUser) => _userMapper.map(rawUser))
                .toList());
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<Map<int, bool>>> getLikes(String authorizationToken,
      List<int> contentIds) async {
    return Result.success(
        data: Map.fromIterable(contentIds,
            key: (item) => item, value: (item) => false));
  }

  @override
  Future<Result<void>> changeLike(String authorizationToken, int contentId, bool like) async {
    return Result.success(data: null);
  }
}
