import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/paged_list.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_contents.dart';
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
          await _service.getMainContent('Bearer $authorizationToken', page);
      if (response.statusCode == 200) {
        return _mapSuccessfulResponse(response);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> sendContent(
      String authorizationToken, String message, String imagePath) async {
    try {
      final response = await _service.sendContent(
          'Bearer $authorizationToken', message, imagePath);
      if (response.statusCode == 200) {
        return Result.success(null);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadContent(
      String authorizationToken, User user, int page) async {
    try {
      final response = await _service.getUserContentById(
          'Bearer $authorizationToken', user.id, page);
      if (response.statusCode == 200) {
        return _mapSuccessfulResponse(response);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadContentWithQuery(
      String authorizationToken, String query, int page) async {
    try {
      final response = await _service.searchContent(
          'Bearer $authorizationToken', query, page);
      if (response.statusCode == 200) {
        return _mapSuccessfulResponse(response);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadRecommendedContent(
      String authorizationToken, int page) async {
    try {
      final response = await _service.getRecommendedContent(
          'Bearer $authorizationToken', page);
      if (response.statusCode == 200) {
        return _mapSuccessfulResponse(response);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PagedList<Content>>> loadUserContent(
      String authorizationToken, int page) async {
    try {
      final response =
          await _service.getUserContent('Bearer $authorizationToken', page);
      if (response.statusCode == 200) {
        return _mapSuccessfulResponse(response);
      } else {
        return Result.error(ServerException());
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  Result<PagedList<Content>> _mapSuccessfulResponse(
          Response<RawContents> response) =>
      Result.success(PagedList(
          list: response.body.contents
              .map((rawContent) => _contentsMapper.map(rawContent))
              .toList(),
          page: response.body.page ?? 0,
          pages: response.body.pages ?? 1));
}
