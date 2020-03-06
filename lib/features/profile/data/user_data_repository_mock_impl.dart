import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';
import 'package:instagram_clone/injection.dart';

@lazySingleton
@mock
@RegisterAs(UserDataRepository)
class UserDataRepositoryMockImpl extends UserDataRepository {
  final Map<User, bool> _observations = Map();

  @override
  Future<Result<void>> updateUser(String authorizationToken, String avatarPath, String bio, String username) async {
    return Result.success(data: null);
  }

  @override
  Future<Result<User>> fetchUserData(String authorizationToken) async {
    return Result.success(
        data: User.create(
           id:1,
            username: "elo",
            avatar: Image.create(
                url:
                "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")));
  }

  @override
  Future<Result<void>> changeObservation(String authorizationToken, User user, bool observe) async {
    _observations[user] = observe;
    return Result.success(data: null);
  }

  @override
  Future<Result<bool>> getObservation(String authorizationToken, User user) async {
    return Result.success(data: _observations[user] ?? false);
  }
}