import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:umkm/umkm/model/umkm.dart';

class UMKMService {
  final String baseUrl = 'http://10.0.2.2';
  final String endpoint = 'db.php';

  Uri getUri(String path) {
    return Uri.parse("$baseUrl$path");
  }

  Future<List<UMKM>> getUMKM() async {
    final response = await http.get(Uri.parse('$baseUrl/umkm'));

    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => UMKM.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load UMKM');
    }
  }
}
