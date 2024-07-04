import 'package:flutter/material.dart';
import 'package:umkm/home/homeview.dart';
import 'package:umkm/umkm/service/login_service.dart';

class LoginController {
  final loginservice = LoginService();

  Future<void> login(BuildContext context, email, password) async {
    var result = await loginservice.login(email, password);

    if (result['status'] != null && result['status'] == 'Login success!') {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
        (route) => false,
      );
    } else {
      String message = result['message'] ?? 'An unknown error occurred.';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
