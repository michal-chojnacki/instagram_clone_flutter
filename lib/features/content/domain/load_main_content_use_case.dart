import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';

import './model/content.dart';
import './user_content_repository.dart';
import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class LoadMainContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  LoadMainContentUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<Content>>> call(int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    try {
      var authorizationToken = (await _loadAuthorizationToken()).when(
          success: (result) => result.data,
          error: (result) => throw result.exception);
      return await _repository.loadMainContent(authorizationToken);
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
