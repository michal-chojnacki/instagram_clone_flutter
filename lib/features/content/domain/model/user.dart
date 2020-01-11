import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/image.dart';

class User extends Equatable {
  final String username;
  final Image avatar;

  User({
    @required this.username,
    @required this.avatar,
  }) : super([username, avatar]);
}