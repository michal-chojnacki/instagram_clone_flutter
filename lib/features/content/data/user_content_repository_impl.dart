import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@prod
@dev
@Injectable(as: UserContentRepository)
class UserContentRepositoryImpl extends UserContentRepository {
  final ContentService _service;
  final ContentMapper _contentsMapper;

  UserContentRepositoryImpl(this._service, this._contentsMapper);

  @override
  Future<Result<PagedList<Content>>> loadMainContent(
      String authorizationToken, int page) async {
    try {
      final response =
          await _service.getMainContent('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        return Result.success(
            data: PagedList.create(
                list: response.body.contents
                    .map((rawContent) => _contentsMapper.map(rawContent))
                    .toList()));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<void>> sendContent(
      String authorizationToken, String message, String imagePath) async {
    try {
      final response = await _service.sendContent(
          'Bearer $authorizationToken', message, imagePath);
      if (response.statusCode == 200) {
        return Result.success(data: null);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadContent(
      String authorizationToken, User user, int page) async {
    try {
      final response = await _service.getUserContentById(
          'Bearer $authorizationToken', user.id);
      if (response.statusCode == 200) {
        return Result.success(
            data: PagedList.create(
                list: response.body.contents
                    .map((rawContent) => _contentsMapper.map(rawContent))
                    .toList()));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadContentWithQuery(
      String authorizationToken, String query, int page) async {
    try {
      final response =
          await _service.searchContent('Bearer $authorizationToken', query);
      if (response.statusCode == 200) {
        return Result.success(
            data: PagedList.create(
                list: response.body.contents
                    .map((rawContent) => _contentsMapper.map(rawContent))
                    .toList()));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadRecommendedContent(
      String authorizationToken, int page) async {
    try {
      final response =
          await _service.getRecommendedContent('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        return Result.success(
            data: PagedList.create(
                list: response.body.contents
                    .map((rawContent) => _contentsMapper.map(rawContent))
                    .toList()));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadUserContent(
      String authorizationToken, int page) async {
    try {
      final response =
          await _service.getUserContent('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        return Result.success(
            data: PagedList.create(
                list: response.body.contents
                    .map((rawContent) => _contentsMapper.map(rawContent))
                    .toList()));
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
