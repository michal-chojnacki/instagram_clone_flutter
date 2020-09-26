import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/injection.dart';

@mock
@Injectable(as: UserContentRepository)
class UserContentRepositoryMockImpl extends UserContentRepository {
  @override
  Future<Result<PagedList<Content>>> loadMainContent(
      String authorizationToken, int page) async {
    if (page > 0) {
      return Result.success(PagedList.create(list: [], page: 1, pages: 1));
    } else {
      return Result.success(PagedList.create(list: [
        Content.create(
            id: 1,
            likesCount: 2,
            image: Image.create(
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg'),
            description: 'test description',
            owner: User.create(
                id: 1,
                bio: 'bio',
                fullname: 'elo name',
                username: 'elo',
                posts: 1,
                followees: 2,
                followers: 3,
                avatar: Image.create(
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg')),
            publicationTimestamp: DateTime.now().millisecondsSinceEpoch),
      ], page: 0, pages: 1));
    }
  }

  @override
  Future<Result<void>> sendContent(
      String authorizationToken, String message, String imagePath) async {
    return Result.success(null);
  }

  @override
  Future<Result<PagedList<Content>>> loadContent(
      String authorizationToken, User user, int page) async {
    return loadMainContent(authorizationToken, page);
  }

  @override
  Future<Result<PagedList<Content>>> loadContentWithQuery(
      String authorizationToken, String query, int page) async {
    return loadMainContent(authorizationToken, page);
  }

  @override
  Future<Result<PagedList<Content>>> loadRecommendedContent(
      String authorizationToken, int page) async {
    return loadMainContent(authorizationToken, page);
  }

  @override
  Future<Result<PagedList<Content>>> loadUserContent(
      String authorizationToken, int page) async {
    return loadMainContent(authorizationToken, page);
  }
}
