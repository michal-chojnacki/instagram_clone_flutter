import 'package:instagram_clone/features/authenticate/data/authentication_repository_impl.dart';
import 'package:instagram_clone/features/content/data/contents_json_mapper.dart';
import 'package:instagram_clone/features/content/data/user_content_repository_impl.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token.dart';
import 'package:instagram_clone/features/content/domain/load_main_content.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/features/content/domain/user_content_repository.dart';
import 'package:instagram_clone/features/content/presentation/main_contents_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:instagram_clone/core/json_mapper.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/authenticate/domain/authentication_repository.dart';

void initKiwi() {
  Container().registerSingleton((c) => http.Client());
  Container().registerFactory<JsonMapper<List<Content>>, ContentsJsonMapper>((c) => ContentsJsonMapper());
  Container().registerFactory<AuthenticationRepository, AuthenticationRepositoryImpl>((c) => AuthenticationRepositoryImpl(c.resolve()));
  Container().registerFactory<UserContentRepository, UserContentRepositoryImpl>((c) => UserContentRepositoryImpl(c.resolve(), c.resolve()));
  Container().registerFactory((c) => LoadAuthorizationToken(c.resolve()));
  Container().registerFactory((c) => LoadMainContent(c.resolve(), c.resolve()));
  Container().registerFactory((c) => MainContentsBloc(c.resolve(), 50));
}