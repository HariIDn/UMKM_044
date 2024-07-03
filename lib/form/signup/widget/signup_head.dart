import 'package:flutter/material.dart';

class SignupHead extends StatelessWidget {
  const SignupHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
      child: Text(
        'Buat Akun',
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontFamily: 'Outfit',
              letterSpacing: 0,
            ),
      ),
    );
  }
}
