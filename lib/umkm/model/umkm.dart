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

  factory UMKM.fromJson(Map<String, dynamic> json) {
    return UMKM(
      id: json['id'],
      nama: json['nama'],
      deskripsi: json['deskripsi'],
      menu: json['menu'],
      foto: json['foto'],
    );
  }
}
