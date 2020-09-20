import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/verify_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';
import 'package:mockito/mockito.dart';

class MockClearAuthenticationTokenUseCase extends Mock
    implements ClearAuthenticationTokenUseCase {}

class MockGetUserDataUseCase extends Mock implements GetUserDataUseCase {}

class MockUser extends Mock implements User {}

void main() {
  group('VerifyAuthorizationTokenUseCase tests:', () {
    var getUserDataUseCase = MockGetUserDataUseCase();
    var clearAuthenticationTokenUseCase = MockClearAuthenticationTokenUseCase();
    var tested = VerifyAuthorizationTokenUseCase(
        clearAuthenticationTokenUseCase, getUserDataUseCase);
    test(
        "given getUserDataUseCase returning success when testd called then result is success",
        () async {
      // given
      when(getUserDataUseCase.call())
          .thenAnswer((_) async => Result.success(data: MockUser()));

      // when
      var result = await tested.call();

      // verify
      expect(result is Success, true);
    });
    test(
        "given getUserDataUseCase returning error when testd called then result is error and clearAuthenticationTokenUseCase is called",
        () async {
      // given
      when(clearAuthenticationTokenUseCase.call())
          .thenAnswer((_) async => Result.success(data: Void));
      when(getUserDataUseCase.call()).thenAnswer(
          (_) async => Result.error(exception: Exception('Fake error')));

      // when
      var result = await tested.call();

      // verify
      expect(result is Error, true);
      verify(clearAuthenticationTokenUseCase.call());
    });
  });
}
