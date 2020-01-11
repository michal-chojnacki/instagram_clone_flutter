import 'package:instagram_clone/core/json_mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_content.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

class ContentsJsonMapper extends JsonMapper<List<Content>> {
  @override
  List<Content> map(Map<String, dynamic> json) {
    return (json['contents'] as List<dynamic>).map((json) => RawContent.fromJson(json)).toList();
  }
}