import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Credentials extends Equatable {
  final String username;
  final String password;

  Credentials({
    @required this.username,
    @required this.password,
  }) : super([username, password]);
}