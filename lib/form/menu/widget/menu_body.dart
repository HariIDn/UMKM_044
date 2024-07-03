import 'package:flutter/material.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukan Nama Menu Anda',
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Harga',
                  hintText: 'Masukan Harga',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
