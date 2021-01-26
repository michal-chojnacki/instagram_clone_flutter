import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@injectable
class ChangeLikeUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  ChangeLikeUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<void>> call(int contentId, bool like) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (data) =>
                    _repository.changeLike(data, contentId, like),
                error: (exception) =>
                    Future.value(Result<void>.error(exception))))
        .single;
  }
}
