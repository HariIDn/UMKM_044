import 'package:flutter/material.dart';
import 'package:umkm/profile/view/pu_profileview.dart';

class UsahaFooter extends StatelessWidget {
  const UsahaFooter({super.key});

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
