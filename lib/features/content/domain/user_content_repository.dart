import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_impl.dart';

import './model/content.dart';

@injectable
@Bind.toType(UserContentRepositoryImpl)
abstract class UserContentRepository {
  Future<Result<List<Content>>> loadMainContent(String authorizationToken);
}