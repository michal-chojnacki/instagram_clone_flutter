import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

part 'user_data_service.chopper.dart';

@injectable
@ChopperApi(baseUrl: '/')
abstract class UserDataService extends ChopperService {
  @factoryMethod
  static UserDataService create(ChopperClient client) =>
      _$UserDataService(client);

  @Get(path: 'user')
  Future<Response> getUser(@Header('Authorization') String authorizationBearer,
      @Query('user') int userId);

  @Get(path: 'recommended_users')
  Future<Response> getRecommendedUsers(
      @Header('Authorization') String authorizationBearer);

  @Get(path: 'observing')
  Future<Response> getObservingStatus(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId);

  @Post(path: 'observing')
  @multipart
  Future<Response> updateObservingStatus(
      @Header('Authorization') String authorizationBearer,
      @Body() Map<String, dynamic> observingStatus);

  @Post(path: 'user')
  @multipart
  Future<Response> updateUserData(
      @Header('Authorization') String authorizationBearer,
      @Part('bio') String bio,
      @Part('username') String username,
      @Part('fullname') String fullname,
      @PartFile('avatar') String avatarPath);

  @Get(path: 'likes')
  Future<Response> getLikeStatuses(
      @Header('Authorization') String authorizationBearer,
      @Query('ids') String ids);

  @Post(path: 'likes')
  Future<Response> updateLikes(
      @Header('Authorization') String authorizationBearer,
      @Body() Map<String, dynamic> likeStatus);

  @Get(path: 'followers')
  Future<Response> getFollowers(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId,
      @Query('page') int page);

  @Get(path: 'followees')
  Future<Response> getFollowees(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId,
      @Query('page') int page);
}
