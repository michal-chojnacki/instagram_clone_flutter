import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

import './model/content.dart';

abstract class UserContentRepository {
  Future<Result<PagedList<Content>>> loadContent(
      String authorizationToken, User user, int page);

  Future<Result<PagedList<Content>>> loadUserContent(
      String authorizationToken, int page);

  Future<Result<PagedList<Content>>> loadMainContent(
      String authorizationToken, int page);

  Future<Result<PagedList<Content>>> loadRecommendedContent(
      String authorizationToken, int page);

  Future<Result<PagedList<Content>>> loadContentWithQuery(
      String authorizationToken, String query, int page);

  Future<Result<void>> sendContent(
      String authorizationToken, String message, String imagePath);
}
