import 'package:dartz/dartz.dart';

import './model/content.dart';

abstract class UserContentRepository {
  Future<Either<Exception, List<Content>>> loadMainContent(String authorizationToken);
}