import 'dart:ffi';

import 'package:injectable/injectable.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';

@injectable
class VerifyAuthorizationTokenUseCase {
  final ClearAuthenticationTokenUseCase _clearAuthenticationTokenUseCase;
  final GetUserDataUseCase _getUserDataUseCase;

  VerifyAuthorizationTokenUseCase(
      this._clearAuthenticationTokenUseCase, this._getUserDataUseCase);

  Future<Result<void>> call() async {
    return (await _getUserDataUseCase.call()).when(
        success: (_) => Result.success(Void),
        error: (Exception exception) async {
          await _clearAuthenticationTokenUseCase.call();
          return Result.error(exception);
        });
  }
}
