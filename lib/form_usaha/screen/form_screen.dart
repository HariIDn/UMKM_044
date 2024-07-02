import 'package:flutter/material.dart';
import 'package:umkm/form_usaha/widget/form_body.dart';
import 'package:umkm/form_usaha/widget/form_footer.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambahkan Usaha',
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
        children: [FormBody(), FormFooter()],
      ),
    );
  }
}
