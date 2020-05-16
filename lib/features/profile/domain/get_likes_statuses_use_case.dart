import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@injectable
class GetLikesStatusesUseCase {
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final UserDataRepository _repository;

  GetLikesStatusesUseCase(this._loadAuthorizationToken, this._repository);

  Future<Result<Map<int, bool>>> call(List<int> contentIds) {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) =>
                    _repository.getLikes(result.data, contentIds),
                error: (result) => Future.value(
                    Result<Map<int, bool>>.error(exception: result.exception))))
        .single;
  }
}
