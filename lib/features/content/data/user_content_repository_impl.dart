import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/exceptions.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/data/content_service.dart';
import 'package:instagram_clone/features/content/data/mapper/content_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';

@injectable
@RegisterAs(UserContentRepository)
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
        return Result.success(
            data: response.body.contents
                .map((rawContent) => _contentsMapper.map(rawContent))
                .toList());
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
      http.MultipartFile image = await http.MultipartFile.fromPath('file', imagePath,
          contentType: MediaType('image', 'jpg'));
      final response = await _service.sendContent(
          'Bearer $authorizationToken', message, image);
      if (response.statusCode == 200) {
        return Result.success(data: null);
      } else {
        return Result.error(exception: ServerException());
      }
    } catch (e) {
      return Result.error(exception: e);
    }
  }
}
