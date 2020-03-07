import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@injectable
class GetContentWithQueryUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetContentWithQueryUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<Content>>> call(String query, int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) => authorizationTokenResult.when(
        success: (result) => _repository.loadContentWithQuery(result.data, query),
        error: (result) => Future.value(Result<List<Content>>.error(exception: result.exception))))
        .single;
  }
}