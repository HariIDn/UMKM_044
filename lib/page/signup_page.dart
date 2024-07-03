// Suggested code may be subject to a license. Learn more: ~LicenseLog:3349384012.
import 'package:umkm/form/signup/screen/form_signup.dart';
import 'package:umkm/form/signup/widget/signup_body.dart';
import 'package:umkm/form/signup/widget/singup_footer.dart';
import 'package:umkm/page/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umkm/form/signup/widget/signup_head.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: FormSignup());
  }
}
