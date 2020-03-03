import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class UpdateUserDataUseCase {
  final UserDataRepository _repository;

  UpdateUserDataUseCase(this._repository);

  Future<Result<void>> call({ String avatarPath, String bio, String username }) {
    return _repository.updateUser(avatarPath, bio, username);
  }
}
