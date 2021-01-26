import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

abstract class UserDataRepository {
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath,
      String bio, String username, String fullname);

  Future<Result<User>> fetchUserData(
      String authorizationToken, @nullable int userId);

  Future<Result<List<User>>> fetchRecommendedUsers(String authorizationToken);

  Future<Result<void>> changeObservation(
      String authorizationToken, User user, bool observe);

  Future<Result<bool>> getObservation(String authorizationToken, User user);

  Future<Result<Map<int, bool>>> getLikes(
      String authorizationToken, List<int> contentIds);

  Future<Result<void>> changeLike(
      String authorizationToken, int contentId, bool like);

  Future<Result<PagedList<User>>> loadFollowees(
      String authorizationToken, int userId, int page);

  Future<Result<PagedList<User>>> loadFollowers(
      String authorizationToken, int userId, int page);
}
