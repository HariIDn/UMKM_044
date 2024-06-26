import 'package:flutter/material.dart';
import 'package:umkm/home/homeview.dart';
import 'package:umkm/page/signup_page.dart';
import 'package:umkm/page/screen/splashscreen.dart';
import 'package:umkm/page/widget/tab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabWidget(),
    );
  }
}
