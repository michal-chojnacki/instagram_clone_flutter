import 'package:dartz/dartz.dart';

import '../../../core/no_params.dart';
import '../../../core/usecase.dart';

class LoadAuthorizationToken implements UseCase<String, NoParams> {

  @override
  Future<Either<Exception, String>> call(NoParams params) async {
    return Right("eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbG8iLCJleHAiOjE1Nzg4MTM1NjUsImlhdCI6MTU3ODc3NzU2NX0.X_rmfRJ99Sw5ypi2Qf1Pdaut7rL5_1RrNLzYjt0ld8A");
  }
}