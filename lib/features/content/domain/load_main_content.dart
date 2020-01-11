import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/core/exceptions.dart';

import './load_authorization_token.dart';
import './model/content.dart';
import './user_content_repository.dart';
import '../../../core/no_params.dart';
import '../../../core/usecase.dart';

class LoadMainContent implements UseCase<List<Content>, Params> {
  final UserContentRepository repository;
  final LoadAuthorizationToken loadAuthorizationToken;

  LoadMainContent(this.repository, this.loadAuthorizationToken);

  @override
  Future<Either<Exception, List<Content>>> call(Params params) async {
    if (params.page > 0) {
      return Left(new NoNextPageException());
    }
    return (await loadAuthorizationToken(NoParams())).fold((exception) {
      return Left(exception);
    }, (authorizationToken) async {
      return await repository.loadMainContent(authorizationToken);
    });
  }
}

class Params extends Equatable {
  final int page;
  final int pageSize;

  Params({@required this.page, @required this.pageSize}) : super([page, pageSize]);
}
