import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class GetUserDataUseCase {
  final UserDataRepository _repository;

  GetUserDataUseCase(this._repository);

  Future<Result<User>> call() {
    return _repository.fetchUserData();
  }
}
