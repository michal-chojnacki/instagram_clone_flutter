// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthenticationService extends AuthenticationService {
  _$AuthenticationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthenticationService;

  @override
  Future<Response<dynamic>> authenticate(Map<String, dynamic> rawCredentials) {
    final $url = '/authenticate';
    final $body = rawCredentials;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> register(Map<String, dynamic> rawCredentials) {
    final $url = '/register';
    final $body = rawCredentials;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
