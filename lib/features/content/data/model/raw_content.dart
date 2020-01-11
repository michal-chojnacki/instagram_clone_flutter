import 'dart:math';

import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:meta/meta.dart';

class RawContent extends Content {
  RawContent({
    @required String id,
    @required RawImage image,
    @required String description,
    @required RawUser owner,
    @required int publicationTimestamp,
  }) : super(id : id, image: image, description: description, owner: owner, publicationTimestamp: publicationTimestamp);

  factory RawContent.fromJson(Map<String, dynamic> json) {
    return RawContent(
      id: new Random().nextInt(100).toString(),
      image: RawImage.fromJson(json['image']),
      description: json['description'],
      owner: RawUser.fromJson(json['owner']),
      publicationTimestamp: json['publicationTimestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': (image as RawImage).toJson(),
      'description': description,
      'owner': (owner as RawUser).toJson(),
      'publicationTimestamp': publicationTimestamp,
    };
  }
}