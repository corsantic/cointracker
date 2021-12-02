import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Util {
  static Map<String, String>? getHeader() {
    var header = {
      "${dotenv.env['API_KEY_NAME']}": "${dotenv.env['API_KEY']}",
      "Access-Control-Allow-Origin": "*",
      "Accept": "application/json",
    };
    return header;
  }
}
