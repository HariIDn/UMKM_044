import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class UMKMService {
  final String baseUrl = 'http://10.0.2.2';
  final String endpoint = 'db.php';

  Uri getUri(String path) {
    return Uri.parse("$baseUrl$path");
  }

  Future<List<dynamic>> fetchUMKM() async {
    var response = await http.get(
        getUri(
          endpoint,
        ),
        headers: {
          "Accept": "application/json",
        });

    if (response.statusCode == 200) {
      final Map<String, dynamic> decodeResponse = json.decode(response.body);
      return decodeResponse['db.php'];
    } else {
      throw Exception('Failed to load culinary: ${response.reasonPhrase}');
    }
  }
}
