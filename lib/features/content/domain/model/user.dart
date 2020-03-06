import 'package:built_value/built_value.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

abstract class User extends Object with EquatableMixin implements Built<User, UserBuilder> {
  int get id;
  String get username;
  Image get avatar;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  factory User.create({@required int id, @required String username, @required Image avatar}) {
    return User((b) => b
    ..id = id
    ..username = username
    ..avatar = avatar.toBuilder());
  }

  @override
  List<Object> get props => [id];
}