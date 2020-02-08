// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ContentService extends ContentService {
  _$ContentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ContentService;

  Future<Response<RawContents>> getMainContent(String authorizationBearer) {
    final $url = '/main_content';
    final $headers = {'Authorization': authorizationBearer};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<RawContents, RawContents>($request);
  }
}
