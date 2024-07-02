// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

class UMKM {
  int? id;
  final String nama;
  final String deskripsi;
  final String menu;
  final String foto;
  UMKM({
    this.id,
    required this.nama,
    required this.deskripsi,
    required this.menu,
    required this.foto,
  });

  factory UMKM.fromMap(Map<String, dynamic> map) {
    return UMKM(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      deskripsi: map['deskripsi'] as String,
      menu: map['menu'] as String,
      foto: map['foto'] as String,
    );
  }
}
