import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umkm/form/login/screen/form_login.dart';
import 'package:umkm/form/login/widget/login_body.dart';
import 'package:umkm/form/login/widget/login_footer.dart';
import 'package:umkm/form/login/widget/login_head.dart';
import 'package:umkm/home/homeview.dart';
import 'package:umkm/page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: FormLogin());
  }
}
