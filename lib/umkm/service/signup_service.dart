import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupService {
  final String baseUrl = 'http://10.0.2.2/umkm/';
  final String endpoint = 'signup.php';

  Uri getUri(String path) {
    return Uri.parse("$baseUrl$path");
  }

  Future<http.Response> post(Map<String, String> data) async {
    var request = http.MultipartRequest(
      "POST",
      getUri(endpoint),
    )
      ..fields.addAll(data)
      ..headers['Content-Type'] = 'application/json';

    http.Response response =
        await http.Response.fromStream(await request.send());
    print('Response: ${response.body}'); // Add this line
    return response;
  }
}
