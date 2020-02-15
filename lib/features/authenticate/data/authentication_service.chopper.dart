// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$AuthenticationService extends AuthenticationService {
  _$AuthenticationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = AuthenticationService;

  Future<Response<RawToken>> authenticate(RawCredentials rawCredentials) {
    final $url = '/authenticate';
    final $body = rawCredentials;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RawToken, RawToken>($request);
  }

  Future<Response<RawToken>> register(RawCredentials rawCredentials) {
    final $url = '/register';
    final $body = rawCredentials;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RawToken, RawToken>($request);
  }
}
