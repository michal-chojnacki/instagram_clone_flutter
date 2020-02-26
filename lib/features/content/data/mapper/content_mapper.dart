import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/image_mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/user_mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_content.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';

@injectable
class ContentMapper implements Mapper<RawContent, Content> {
  final ImageMapper _imageMapper;
  final UserMapper _userMapper;

  ContentMapper(this._imageMapper, this._userMapper);

  @override
  Content map(RawContent input) {
    return Content.create(
        id: "",
        image: _imageMapper.map(input.image) ?? null,
        description: input.description ?? "",
        owner: _userMapper.map(input.owner) ?? null,
        publicationTimestamp: input.publicationTimestamp ?? 0);
  }
}
