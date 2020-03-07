import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';

import './model/content.dart';
import './user_content_repository.dart';
import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class GetMainContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetMainContentUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<Content>>> call(int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) => authorizationTokenResult.when(
            success: (result) => _repository.loadMainContent(result.data),
            error: (result) => Future.value(Result<List<Content>>.error(exception: result.exception))))
        .single;
  }
}
