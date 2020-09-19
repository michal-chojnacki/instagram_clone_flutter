import 'package:injectable/injectable.dart';
import 'package:instagram_clone/core/mapper.dart';
import 'package:instagram_clone/features/content/data/mapper/image_mapper.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

@injectable
class UserMapper implements Mapper<RawUser, User> {
  final ImageMapper _imageMapper;

  UserMapper(this._imageMapper);

  @override
  User map(RawUser input) {
    var username = input.username;
    if (username == null) {
      return null;
    } else {
      return User.create(
          id: input.id,
          username: input.username,
          fullname: input.fullname ?? "",
          bio: input.bio ?? "",
          posts: input.posts ?? 0,
          followees: input.followees ?? 0,
          followers: input.followers ?? 0,
          avatar: _imageMapper.map(input.avatar));
    }
  }
}
