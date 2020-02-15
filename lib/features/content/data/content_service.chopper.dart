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

  Future<Response> sendContent(
      String authorizationBearer, String message, MultipartFile image) {
    final $url = '/content';
    final $headers = {'Authorization': authorizationBearer};
    final $parts = <PartValue>[
      PartValue<String>('message', message),
      PartValueFile<MultipartFile>('image', image)
    ];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
