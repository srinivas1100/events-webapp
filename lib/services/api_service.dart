import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.example.com';

  Future<dynamic> get({required String uri}) async {
    final url = Uri.parse(uri);
    final response = await http.get(url);

    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final body = json.encode(data);
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(url, body: body, headers: headers);

    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseBody = response.body;

      if (responseBody.isNotEmpty) {
        return json.decode(responseBody);
      } else {
        return null;
      }
    } else {
      throw Exception(
          'API request failed with status code ${response.statusCode}');
    }
  }
}
