import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/clear_authentication_token_use_case.dart';
import 'package:instagram_clone/features/authenticate/domain/verify_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/profile/domain/get_user_data_use_case.dart';

class MockClearAuthenticationTokenUseCase extends Mock
    implements ClearAuthenticationTokenUseCase {}

class MockGetUserDataUseCase extends Mock implements GetUserDataUseCase {}

class MockUser extends Mock implements User {}

void main() {
  group('VerifyAuthorizationTokenUseCase tests:', () {
    final getUserDataUseCase = MockGetUserDataUseCase();
    final clearAuthenticationTokenUseCase =
        MockClearAuthenticationTokenUseCase();
    final tested = VerifyAuthorizationTokenUseCase(
        clearAuthenticationTokenUseCase, getUserDataUseCase);
    test(
        'given getUserDataUseCase returning success when testd called then result is success',
        () async {
      // given
      when(getUserDataUseCase.call())
          .thenAnswer((_) async => Result.success(MockUser()));

      // when
      final result = await tested.call();

      // verify
      expect(result is Success, true);
    });
    test(
        'given getUserDataUseCase returning error when testd called then result is error and clearAuthenticationTokenUseCase is called',
        () async {
      // given
      when(clearAuthenticationTokenUseCase.call())
          .thenAnswer((_) async => Result.success(Void));
      when(getUserDataUseCase.call())
          .thenAnswer((_) async => Result.error(Exception('Fake error')));

      // when
      final result = await tested.call();

      // verify
      expect(result is Error, true);
      verify(clearAuthenticationTokenUseCase.call());
    });
  });
}
