import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@injectable
class UserContentRepositoryImpl extends UserContentRepository {
  final ContentService _service;
  final ContentMapper _contentsMapper;

  UserContentRepositoryImpl(this._service, this._contentsMapper);

  @override
  Future<Result<List<Content>>> loadMainContent(
      String authorizationToken) async {
    try {
      final response =
          await _service.getMainContent('Bearer $authorizationToken');
      if (response.statusCode == 200) {
        var elo = response.body.contents
            .map((rawContent) => _contentsMapper.map(rawContent))
            .toList();
        return Result.success(data: elo);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
