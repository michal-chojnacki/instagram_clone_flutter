import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';

import './model/content.dart';
import './user_content_repository.dart';
import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class GetMainContentUseCase {
  final UserContentRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetMainContentUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<PersonalizedContent>>> call(int page) async {
    if (page > 0) {
      return Result.error(exception: NoNextPageException());
    }

    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) => _repository.loadMainContent(result.data),
                error: (result) => Future.value(
                    Result<List<Content>>.error(exception: result.exception))))
        .asyncMap((contents) => contents.when(
            success: (result) => Future.value(Result.success(
                data: result.data
                    .map((content) => PersonalizedContent.create(
                        content: content, liked: false))
                    .toList())),
            error: (result) =>
                Future.value(Result<List<PersonalizedContent>>.error(exception: result.exception))))
        .single;
  }
}
