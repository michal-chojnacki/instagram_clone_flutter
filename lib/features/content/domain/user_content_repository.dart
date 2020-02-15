import 'package:instagram_clone/core/result.dart';

import './model/content.dart';

abstract class UserContentRepository {
  Future<Result<List<Content>>> loadMainContent(String authorizationToken);

  Future<Result<void>> sendContent(String authorizationToken, String message, String imagePath);
}