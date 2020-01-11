import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:meta/meta.dart';

class RawImage extends Image {
  RawImage({
    @required String url,
  }) : super(url : url);

  factory RawImage.fromJson(Map<String, dynamic> json) {
    return RawImage(
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
    };
  }
}