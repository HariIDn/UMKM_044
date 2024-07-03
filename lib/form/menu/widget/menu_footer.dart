import 'package:flutter/material.dart';
import 'package:umkm/menu/screen/menu_screen.dart';

class MenuFooter extends StatelessWidget {
  const MenuFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MenuScreen()),
            (route) => false,
          );
        },
        child: Text('Submit'));
  }
}
