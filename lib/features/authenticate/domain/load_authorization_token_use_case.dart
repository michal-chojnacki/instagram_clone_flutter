import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';

@injectable
class LoadAuthorizationTokenUseCase {
  final AuthenticationRepository repository;

  LoadAuthorizationTokenUseCase(this.repository);

  Future<Result<String>> call() async {
    return repository.obtainToken();
  }
}
