import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

import '../../authenticate/domain/load_authorization_token_use_case.dart';

@injectable
class GetAllFolloweesUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetAllFolloweesUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<PagedList<User>>> call(int userId, int page) async {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (result) =>
                    _repository.loadFollowees(result.data, userId, page),
                error: (result) => Future.value(Result<PagedList<User>>.error(
                    exception: result.exception))))
        .single;
  }
}
