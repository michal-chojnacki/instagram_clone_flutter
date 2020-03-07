import 'dart:io';

import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class IOClientFactory {
  IOClient get create => IOClient(
    HttpClient()..connectionTimeout = const Duration(seconds: 5),
  );
}