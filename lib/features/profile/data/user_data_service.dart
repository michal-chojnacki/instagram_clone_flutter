import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_statuses.dart';
import 'package:instagram_clone/features/profile/data/model/raw_observing_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_users.dart';

part 'user_data_service.chopper.dart';

@injectable
@ChopperApi(baseUrl: '/')
abstract class UserDataService extends ChopperService {
  @factoryMethod
  static UserDataService create(ChopperClient client) =>
      _$UserDataService(client);

  @Get(path: 'user')
  Future<Response<RawUser>> getUser(
      @Header('Authorization') String authorizationBearer);

  @Get(path: 'recommended_users')
  Future<Response<RawUsers>> getRecommendedUsers(
      @Header('Authorization') String authorizationBearer);

  @Get(path: 'observing')
  Future<Response<RawObservingStatus>> getObservingStatus(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId);

  @Post(path: 'observing')
  @multipart
  Future<Response> updateObservingStatus(
      @Header('Authorization') String authorizationBearer,
      @Body() RawObservingStatus observingStatus);

  @Post(path: 'user')
  @multipart
  Future<Response> updateUserData(
      @Header('Authorization') String authorizationBearer,
      @Part('bio') String bio,
      @Part('username') String username,
      @Part('fullname') String fullname,
      @PartFile('avatar') String avatarPath);

  @Get(path: 'likes')
  Future<Response<RawLikeStatuses>> getLikeStatuses(
      @Header('Authorization') String authorizationBearer,
      @Query('ids') String ids);

  @Post(path: 'likes')
  Future<Response> updateLikes(
      @Header('Authorization') String authorizationBearer,
      @Body() RawLikeStatus likeStatus);

  @Get(path: 'followers')
  Future<Response<RawUsers>> getFollowers(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId,
      @Query('page') int page);

  @Get(path: 'followees')
  Future<Response<RawUsers>> getFollowees(
      @Header('Authorization') String authorizationBearer,
      @Query('user') int userId,
      @Query('page') int page);
}
