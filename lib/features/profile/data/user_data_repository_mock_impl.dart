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
  final Map<User, bool> _observations = Map();
  final Map<int, bool> _likes = Map();

  @override
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath,
      String bio, String username, String fullname) async {
    return Result.success(data: null);
  }

  @override
  Future<Result<User>> fetchUserData(String authorizationToken) async {
    return Result.success(
        data: User.create(
            id: 1,
            username: "elo",
            fullname: "fullname",
            bio: "bio",
            posts: 1,
            followees: 2,
            followers: 3,
            avatar: Image.create(
                url:
                    "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")));
  }

  @override
  Future<Result<void>> changeObservation(
      String authorizationToken, User user, bool observe) async {
    _observations[user] = observe;
    return Result.success(data: null);
  }

  @override
  Future<Result<bool>> getObservation(
      String authorizationToken, User user) async {
    return Result.success(data: _observations[user] ?? false);
  }

  @override
  Future<Result<List<User>>> fetchRecommendedUsers(
      String authorizationToken) async {
    return Result.success(data: <User>[
      User.create(
          id: 1,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")),
      User.create(
          id: 2,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg"))
    ]);
  }

  @override
  Future<Result<Map<int, bool>>> getLikes(
      String authorizationToken, List<int> contentIds) async {
    return Result.success(
        data: Map.fromIterable(contentIds,
            key: (item) => item, value: (item) => _likes[item] ?? false));
  }

  @override
  Future<Result<void>> changeLike(
      String authorizationToken, int contentId, bool like) async {
    _likes[contentId] = like;
    return Result.success(data: null);
  }

  @override
  Future<Result<PagedList<User>>> loadFollowees(
      String authorizationToken, int userId, int page) async {
    return Result.success(
        data: PagedList.create(list: [
      User.create(
          id: 1,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")),
      User.create(
          id: 2,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg"))
    ], page: page, pages: 1));
  }

  @override
  Future<Result<PagedList<User>>> loadFollowers(
      String authorizationToken, int userId, int page) async {
    return Result.success(
        data: PagedList.create(list: [
      User.create(
          id: 1,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")),
      User.create(
          id: 2,
          username: "elo",
          fullname: "fullname",
          bio: "bio",
          posts: 1,
          followees: 2,
          followers: 3,
          avatar: Image.create(
              url:
                  "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg"))
    ], page: page, pages: 1));
  }
}
