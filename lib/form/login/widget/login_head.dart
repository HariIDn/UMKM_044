import 'package:flutter/material.dart';

class LoginHead extends StatelessWidget {
  const LoginHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
      child: Text(
        'Log In',
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontFamily: 'Outfit',
              letterSpacing: 0,
            ),
      ),
    );
  }
}
