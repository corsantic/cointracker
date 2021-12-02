import 'dart:convert';

import 'package:cointracker/model/listing/listing_latest.dart';
import 'package:cointracker/util/util.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';

class ListingService {
  Future<ListingLatest> fetchLatestListing() async {
    var url = "${dotenv.env['API_URL']}";
    var queryParams = {"sort": 'date_added'};
    var path =
        "/${dotenv.env['API_VERSION']}/${dotenv.env['LATEST_LISTING_STR']}";
    var uri = Uri.https(url, path, queryParams);
    try {
      final response = await http.get(uri, headers: Util.getHeader());
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        return ListingLatest.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load listing');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
