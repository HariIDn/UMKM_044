import 'package:flutter/material.dart';

import '../../../maps/maps_screen.dart';

class UsahaBody extends StatefulWidget {
  const UsahaBody({super.key});

  @override
  State<UsahaBody> createState() => _UsahaBodyState();
}

class _UsahaBodyState extends State<UsahaBody> {
  final _formKey = GlobalKey<FormState>();

  String? _alamat;

  void _selectLocation() async {
    String? location = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MapScreen(
          onLocationSelected: (location) {
            setState(() {
              _alamat = location;
            });
          },
        ),
      ),
    );
    if (location != null) {
      setState(() {
        _alamat = location;
      });
    }
  }

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
                labelText: 'Nama Usaha',
                hintText: 'Masukan Nama Usaha Anda',
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Deskripsi Usaha',
                hintText: 'Masukan Deskripsi Usaha (Opsional)',
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alamat"),
                _alamat == null
                    ? SizedBox(
                        width: double.infinity,
                        child: Text('Alamat Kosong'),
                      )
                    : Text('$_alamat'),
                _alamat == null
                    ? TextButton(
                        onPressed: () async {
                          _selectLocation();
                        },
                        child: Text('Pilih Alamat'))
                    : TextButton(
                        onPressed: () async {
                          _selectLocation();
                        },
                        child: Text('Ubah Alamat'),
                      ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
