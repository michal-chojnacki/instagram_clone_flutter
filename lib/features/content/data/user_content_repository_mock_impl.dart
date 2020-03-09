import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/injection.dart';

@injectable
@mock
@RegisterAs(UserContentRepository)
class UserContentRepositoryMockImpl extends UserContentRepository {
  @override
  Future<Result<List<Content>>> loadMainContent(
      String authorizationToken) async {
    return Result.success(data: [
      Content.create(id: 1,
          image: Image.create(
              url: "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg"),
          description: "test description",
          owner: User.create(
              id: 1,
              bio: "bio",
              name: "elo name",
              username: "elo",
              avatar: Image.create(
                  url: "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg")),
          publicationTimestamp: new DateTime.now().millisecondsSinceEpoch),
    ]);
  }

  @override
  Future<Result<void>> sendContent(String authorizationToken, String message, String imagePath) async {
    return Result.success(data: null);
  }

  @override
  Future<Result<List<Content>>> loadContent(String authorizationToken, User user) async {
    return loadMainContent(authorizationToken);
  }

  @override
  Future<Result<List<Content>>> loadContentWithQuery(String authorizationToken, String query) async {
    return loadMainContent(authorizationToken);
  }

  @override
  Future<Result<List<Content>>> loadRecommendedContent(String authorizationToken) async {
    return loadMainContent(authorizationToken);
  }

  @override
  Future<Result<List<Content>>> loadUserContent(String authorizationToken) async {
    return loadMainContent(authorizationToken);
  }
}