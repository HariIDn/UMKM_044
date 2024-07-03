import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../maps/maps_screen.dart';

class UsahaBody extends StatefulWidget {
  const UsahaBody({super.key});

  @override
  State<UsahaBody> createState() => _UsahaBodyState();
}

class _UsahaBodyState extends State<UsahaBody> {
  final _formKey = GlobalKey<FormState>();

  String? _alamat;
  get _id => null;
  File? _image;
  final _imgpick = ImagePicker();

  Future<void> getImage() async {
    final XFile? pickedFile =
        await _imgpick.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('Anda belum memilih gambar.');
      }
    });
  }

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
        key: _formKey,
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
                    SizedBox(
                      height: 8,
                    ),
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
                    Center(
                      child: Column(
                        children: [
                          _image == null
                              ? const Text('Pilih Foto Logo Anda')
                              : Image.file(_image!),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: getImage,
                              child: const Text('Pilih Gambar')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
