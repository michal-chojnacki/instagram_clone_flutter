import 'package:instagram_clone/features/authenticate/domain/model/credentials.dart';
import 'package:meta/meta.dart';

class RawCredentials extends Credentials {
  RawCredentials({
    @required String username,
    @required String password,
  }) : super(username : username, password: password);

  factory RawCredentials.fromJson(Map<String, dynamic> json) {
    return RawCredentials(
      username: json['username'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password
    };
  }
}