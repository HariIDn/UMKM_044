import 'package:flutter/material.dart';
import 'package:umkm/form/login/screen/form_login.dart';
import 'package:umkm/form/signup/screen/form_signup.dart';
import 'package:umkm/profile/view/profileview.dart';
import 'package:umkm/profile/view/pu_profileview.dart';
import 'package:umkm/splash/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: FormLogin(),
    );
  }
}
