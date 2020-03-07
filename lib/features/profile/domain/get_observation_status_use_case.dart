import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class GetObservationStatusUseCase {
  final UserDataRepository _repository;

  GetObservationStatusUseCase(this._repository);

  Future<Result<bool>> call(User user) {
    return _repository.getObservation(user);
  }
}