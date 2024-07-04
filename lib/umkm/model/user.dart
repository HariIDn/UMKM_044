// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int? id;
  final String nama;
  final String pass;
  final String email;
  User({
    this.id,
    required this.nama,
    required this.pass,
    required this.email,
  });

  User copyWith({
    int? id,
    String? nama,
    String? pass,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      pass: pass ?? this.pass,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'pass': pass,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      pass: map['pass'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, nama: $nama, pass: $pass, email: $email)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nama == nama &&
        other.pass == pass &&
        other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nama.hashCode ^ pass.hashCode ^ email.hashCode;
  }
}
