import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/data/user_data_repository.dart';

@injectable
class ChangeObservationUseCase {
  final UserDataRepository _repository;

  ChangeObservationUseCase(this._repository);

  Future<Result<void>> call(User user, bool observe) {
    return _repository.changeObservation(user, observe);
  }
}
