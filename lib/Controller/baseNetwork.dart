import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:project_prak_tpm/Model/detailCockTailModel.dart';

class BaseNetwork {
  static final String baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/";

  static Future<Map<String, dynamic>> get(String partUrl) async {
    final String fullUrl = baseUrl + partUrl;
    final response = await http.get(Uri.parse(fullUrl));
    return _processResponse(response);
  }
  static Future<Map<String, dynamic>> _processResponse(http.Response response) async {
    final body = response.body;
    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      return {"error": true};
    }
  }
}