import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wather_app/wather_model.dart';

class WatherApiClient {
  Future<Wather>? getCurrentWather(
      // double? lat,
      // double? long,
      String? location
      ) async {
    var endPoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=876c25f4a326b499520a501d39eb8370&units=metric");

    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    return Wather.fromJson(body);
  }
}
