import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';
import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';
import 'package:instagram_clone/injection.dart';

@Injectable(as: AuthenticationRepository)
@mock
class AuthenticationRepositoryMockImpl extends AuthenticationRepository {
  final String _mockToken = "mock_token";

  @override
  Future<Result<String>> authenticate(Credentials credentials) async {
    return Result.success(data: _mockToken);
  }

  @override
  Future<Result<String>> obtainToken() async {
    return Result.success(data: _mockToken);
  }

  @override
  Future<Result<String>> register(Credentials credentials) async {
    return Result.success(data: _mockToken);
  }
}
