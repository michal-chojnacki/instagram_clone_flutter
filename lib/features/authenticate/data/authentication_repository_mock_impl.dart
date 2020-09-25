import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';
import 'package:instagram_clone/injection.dart';

@LazySingleton(as: AuthenticationRepository)
@mock
class AuthenticationRepositoryMockImpl extends AuthenticationRepository {
  String _mockToken = "mock_token";

  @override
  Future<Result<String>> authenticate(Credentials credentials) async {
    _mockToken = "mock_token";
    return Result.success(_mockToken);
  }

  @override
  Future<Result<String>> obtainToken() async {
    return Result.success(_mockToken);
  }

  @override
  Future<Result<String>> register(Credentials credentials) async {
    _mockToken = "mock_token";
    return Result.success(_mockToken);
  }

  @override
  Future<Result<void>> clearToken() async {
    _mockToken = null;
    return Result.success(null);
  }
}
