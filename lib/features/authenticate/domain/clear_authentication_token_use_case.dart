import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';

@injectable
class ClearAuthenticationTokenUseCase {
  final AuthenticationRepository _repository;

  ClearAuthenticationTokenUseCase(this._repository);

  Future<Result<void>> call() async {
    return _repository.clearToken();
  }
}
