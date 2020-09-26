import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';

@injectable
class ImageMapper implements Mapper<RawImage, Image> {
  @override
  Image map(RawImage input) {
    var url = input.url;
    if (url == null) {
      return null;
    } else {
      return Image(url: input.url);
    }
  }
}
