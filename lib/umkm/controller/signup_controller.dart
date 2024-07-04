import 'package:http/http.dart' as http;
import 'package:umkm/umkm/service/signup_service.dart';

import '../model/user.dart';
import 'dart:io';
import 'dart:convert';

class SignupController {
  final signupservice = SignupService();

  Future<http.Response> signup(User register) async {
    Map<String, String> data = {
      'nama': register.nama,
      'email': register.email,
      'pass': register.pass,
    };
    try {
      final response = await signupservice.post(data);

      if (response.statusCode == 200) {
        print('Pendaftaran Berhasil');
        return response;
      } else {
        // Registration failed
        print('Registration failed: ${response.body}');
        return response;
      }
    } catch (e) {
      // Error occurred during registration
      print('Error occurred during registration: $e');
      rethrow;
    }
  }
}
