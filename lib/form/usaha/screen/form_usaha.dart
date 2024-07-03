import 'package:flutter/material.dart';
import 'package:umkm/form/usaha/widget/usaha_body.dart';
import 'package:umkm/form/usaha/widget/usaha_footer.dart';

class FormUsaha extends StatefulWidget {
  const FormUsaha({super.key});

  @override
  State<FormUsaha> createState() => _FormUsahaState();
}

class _FormUsahaState extends State<FormUsaha> {
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
        children: [
          UsahaBody(),
          UsahaFooter(),
        ],
      ),
    );
  }
}
