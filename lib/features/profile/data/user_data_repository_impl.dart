import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
@prod
@RegisterAs(UserDataRepository)
class UserDataRepositoryImpl extends UserDataRepository {
  @override
  Future<Result<void>> updateUser(
      String avatarPath, String bio, String username) async {
    return Result.success(data: null);
  }

  @override
  Future<Result<User>> fetchUserData() async {
    return Result.success(
        data: User.create(
            username: "elo",
            avatar: Image.create(
                url:
                    "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")));
  }
}
