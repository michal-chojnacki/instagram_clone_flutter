import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

import './model/content.dart';

abstract class UserContentRepository {
  Future<Result<List<Content>>> loadContent(String authorizationToken, User user);

  Future<Result<List<Content>>> loadUserContent(String authorizationToken);

  Future<Result<List<Content>>> loadMainContent(String authorizationToken);

  Future<Result<List<Content>>> loadRecommendedContent(String authorizationToken);

  Future<Result<List<Content>>> loadContentWithQuery(String authorizationToken, String query);

  Future<Result<void>> sendContent(String authorizationToken, String message, String imagePath);
}