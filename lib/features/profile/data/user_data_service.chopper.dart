// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UserDataService extends UserDataService {
  _$UserDataService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserDataService;

  @override
  Future<Response<dynamic>> getUser(String authorizationBearer) {
    final $url = '/user';
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getRecommendedUsers(String authorizationBearer) {
    final $url = '/recommended_users';
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getObservingStatus(
      String authorizationBearer, int userId) {
    final $url = '/observing';
    final $params = <String, dynamic>{'user': userId};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateObservingStatus(
      String authorizationBearer, Map<String, dynamic> observingStatus) {
    final $url = '/observing';
    final $headers = {'Authorization': authorizationBearer};
    final $body = observingStatus;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUserData(String authorizationBearer,
      String bio, String username, String fullname, String avatarPath) {
    final $url = '/user';
    final $headers = {'Authorization': authorizationBearer};
    final $parts = <PartValue>[
      PartValue<String>('bio', bio),
      PartValue<String>('username', username),
      PartValue<String>('fullname', fullname),
      PartValueFile<String>('avatar', avatarPath)
    ];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getLikeStatuses(
      String authorizationBearer, String ids) {
    final $url = '/likes';
    final $params = <String, dynamic>{'ids': ids};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateLikes(
      String authorizationBearer, Map<String, dynamic> likeStatus) {
    final $url = '/likes';
    final $headers = {'Authorization': authorizationBearer};
    final $body = likeStatus;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getFollowers(
      String authorizationBearer, int userId, int page) {
    final $url = '/followers';
    final $params = <String, dynamic>{'user': userId, 'page': page};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getFollowees(
      String authorizationBearer, int userId, int page) {
    final $url = '/followees';
    final $params = <String, dynamic>{'user': userId, 'page': page};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
