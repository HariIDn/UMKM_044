import 'package:flutter/material.dart';
import 'package:umkm/form/menu/widget/menu_body.dart';
import 'package:umkm/form/menu/widget/menu_footer.dart';

class FormMenu extends StatefulWidget {
  const FormMenu({super.key});

  @override
  State<FormMenu> createState() => _FormMenuState();
}

class _FormMenuState extends State<FormMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambah Menu',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          MenuBody(),
          MenuFooter(),
        ],
      ),
    );
  }
}
