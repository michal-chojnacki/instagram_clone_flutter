import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:meta/meta.dart';

class RawUser extends User {
  RawUser({
    @required String username,
    @required RawImage avatar,
  }) : super(username : username, avatar: avatar);

  factory RawUser.fromJson(Map<String, dynamic> json) {
    return RawUser(
      username: json['username'],
      avatar: RawImage.fromJson(json['avatar']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'avatar': (avatar as RawImage).toJson(),
    };
  }
}