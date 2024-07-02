import 'package:flutter/material.dart';
import 'package:umkm/form/menu/screen/form_menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormMenu()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
