import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

abstract class UserDataRepository {
  Future<Result<void>> updateUser(String avatarPath, String bio, String username);

  Future<Result<User>> fetchUserData();

  Future<Result<void>> changeObservation(User user, bool observe);

  Future<Result<bool>> getObservation(User user);
}