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

  UMKM copyWith({
    int? id,
    String? nama,
    String? deskripsi,
    String? menu,
    String? foto,
  }) {
    return UMKM(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      deskripsi: deskripsi ?? this.deskripsi,
      menu: menu ?? this.menu,
      foto: foto ?? this.foto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'deskripsi': deskripsi,
      'menu': menu,
      'foto': foto,
    };
  }

  factory UMKM.fromMap(Map<String, dynamic> map) {
    return UMKM(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      deskripsi: map['deskripsi'] as String,
      menu: map['menu'] as String,
      foto: map['foto'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UMKM.fromJson(String source) =>
      UMKM.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UMKM(id: $id, nama: $nama, deskripsi: $deskripsi, menu: $menu, foto: $foto)';
  }

  @override
  bool operator ==(covariant UMKM other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nama == nama &&
        other.deskripsi == deskripsi &&
        other.menu == menu &&
        other.foto == foto;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nama.hashCode ^
        deskripsi.hashCode ^
        menu.hashCode ^
        foto.hashCode;
  }
}
