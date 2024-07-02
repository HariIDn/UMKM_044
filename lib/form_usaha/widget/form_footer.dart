import 'package:flutter/material.dart';
import 'package:umkm/profile/pu_profileview.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => PUProfileView()),
            (route) => false,
          );
        },
        child: Text('Submit'));
  }
}
