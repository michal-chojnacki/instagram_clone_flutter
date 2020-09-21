// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ContentService extends ContentService {
  _$ContentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ContentService;

  @override
  Future<Response<RawContents>> getMainContent(
      String authorizationBearer, int page) {
    final $url = '/main_content';
    final $params = <String, dynamic>{'page': page};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }

  @override
  Future<Response<RawContents>> getRecommendedContent(
      String authorizationBearer) {
    final $url = '/recommended_content';
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }

  @override
  Future<Response<RawContents>> searchContent(
      String authorizationBearer, String query) {
    final $url = '/search_content';
    final $params = <String, dynamic>{'query': query};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }

  @override
  Future<Response<RawContents>> getUserContentById(
      String authorizationBearer, int userId) {
    final $url = '/content';
    final $params = <String, dynamic>{'user': userId};
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }

  @override
  Future<Response<RawContents>> getUserContent(String authorizationBearer) {
    final $url = '/content';
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }

  @override
  Future<Response<dynamic>> sendContent(
      String authorizationBearer, String message, String imagePath) {
    final $url = '/content';
    final $headers = {'Authorization': authorizationBearer};
    final $parts = <PartValue>[
      PartValue<String>('message', message),
      PartValueFile<String>('image', imagePath)
    ];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
