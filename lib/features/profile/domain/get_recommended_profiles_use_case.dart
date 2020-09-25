import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/user_data_repository.dart';

@injectable
class GetRecommendedProfilesUseCase {
  final UserDataRepository _repository;
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;

  GetRecommendedProfilesUseCase(this._repository, this._loadAuthorizationToken);

  Future<Result<List<User>>> call() async {
    return _loadAuthorizationToken()
        .asStream()
        .asyncMap((Result<String> authorizationTokenResult) =>
            authorizationTokenResult.when(
                success: (data) => _repository.fetchRecommendedUsers(data),
                error: (exception) =>
                    Future.value(Result<List<User>>.error(exception))))
        .single;
  }
}
