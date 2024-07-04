import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class LoginService {
  final String baseUrl = 'http://10.0.2.2/umkm/';
  final String endpoint = 'login.php';

  Uri getUri(String path) {
    return Uri.parse("$baseUrl$path");
  }

  Future<Map<String, dynamic>> login(email, password) async {
    try {
      final response = await http.post(
        getUri(endpoint),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}),
      );

      // Log request details
      print('Sending login request to: ${getUri(endpoint)}');
      print('Request payload: ${jsonEncode({
            "email": email,
            "password": password
          })}');

      // Log response details
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        // Decode response body
        Map<String, dynamic> userData = json.decode(response.body);

        // Create User object from decoded data
        User user = User.fromMap(userData);

        print('User data: $userData');

        return {'status': 'Login success!', 'user': user.toJson()};
      } else if (response.statusCode == 400) {
        // Handle unauthorized or invalid credentials
        print('Invalid credentials');
        return {'status': 'Login failed!', 'message': 'Invalid credentials'};
      } else {
        // Handle other HTTP status codes
        print('Login failed with status: ${response.statusCode}');
        return {'status': 'Login failed!', 'message': 'Failed to login.'};
      }
    } catch (e) {
      // Log error details
      print('Exception during login: $e');
      return {'status': 'failed', 'message': 'Failed to login: $e'};
    }
  }
}
