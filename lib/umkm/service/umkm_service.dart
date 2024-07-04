import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:umkm/umkm/model/umkm.dart';

import '../../form/login/screen/form_login.dart';

class UMKMService {
  final String baseUrl = 'http://10.0.2.2';
  final String endpoint = 'umkm.php';

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
      return decodeResponse['umkm.php'];
    } else {
      throw Exception('Failed to load culinary: ${response.reasonPhrase}');
    }
  }
}
