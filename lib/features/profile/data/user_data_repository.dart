import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

abstract class UserDataRepository {
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath, String bio, String username, String name);

  Future<Result<User>> fetchUserData(String authorizationToken);

  Future<Result<void>> changeObservation(String authorizationToken, User user, bool observe);

  Future<Result<bool>> getObservation(String authorizationToken, User user);
}