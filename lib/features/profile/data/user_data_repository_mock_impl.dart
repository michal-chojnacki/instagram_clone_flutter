import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';
import 'package:instagram_clone/injection.dart';

@mock
@LazySingleton(as: UserDataRepository)
class UserDataRepositoryMockImpl extends UserDataRepository {
  final Map<User, bool> _observations = {};
  final Map<int, bool> _likes = {};

  @override
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath,
      String bio, String username, String fullname) async {
    return Result.success(null);
  }

  @override
  Future<Result<User>> fetchUserData(
      String authorizationToken, @nullable int userId) async {
    if (userId != null) {
      return Result.error(Exception('Fake exception!'));
    }
    return Result.success(User(
        id: 1,
        username: 'elo',
        fullname: 'fullname',
        bio: 'bio',
        posts: 1,
        followees: 2,
        followers: 3,
        avatar: Image(
            url:
                'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg')));
  }

  @override
  Future<Result<void>> changeObservation(
      String authorizationToken, User user, bool observe) async {
    _observations[user] = observe;
    return Result.success(null);
  }

  @override
  Future<Result<bool>> getObservation(
      String authorizationToken, User user) async {
    return Result.success(_observations[user] ?? false);
  }

  @override
  Future<Result<List<User>>> fetchRecommendedUsers(
      String authorizationToken) async {
    return Result.success(<User>[
      User(
          id: 1,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg')),
      User(
          id: 2,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg'))
    ]);
  }

  @override
  Future<Result<Map<int, bool>>> getLikes(
      String authorizationToken, List<int> contentIds) async {
    return Result.success(
        {for (var item in contentIds) item: _likes[item] ?? false});
  }

  @override
  Future<Result<void>> changeLike(
      String authorizationToken, int contentId, bool like) async {
    _likes[contentId] = like;
    return Result.success(null);
  }

  @override
  Future<Result<PagedList<User>>> loadFollowees(
      String authorizationToken, int userId, int page) async {
    return Result.success(PagedList(list: [
      User(
          id: 1,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg')),
      User(
          id: 2,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg'))
    ], page: page, pages: 1));
  }

  @override
  Future<Result<PagedList<User>>> loadFollowers(
      String authorizationToken, int userId, int page) async {
    return Result.success(PagedList(list: [
      User(
          id: 1,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg')),
      User(
          id: 2,
          username: 'elo',
          fullname: 'fullname',
          bio: 'bio',
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image(
              url:
                  'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg'))
    ], page: page, pages: 1));
  }
}
