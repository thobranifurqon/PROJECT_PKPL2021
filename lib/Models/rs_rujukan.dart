import 'dart:convert';

class RsRujukan {
  RsRujukan({
    this.id,
    this.nama,
    this.alamat,
    this.kabupaten,
    this.telp,
    this.email,
    this.tipe,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String nama;
  String alamat;
  String kabupaten;
  String telp;
  String email;
  String tipe;
  DateTime createdAt;
  DateTime updatedAt;

  factory RsRujukan.fromJson(String str) => RsRujukan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RsRujukan.fromMap(Map<String, dynamic> json) => RsRujukan(
        id: json["id"],
        nama: json["nama"],
        alamat: json["alamat"],
        kabupaten: json["kabupaten"],
        telp: json["telp"],
        email: json["email"],
        tipe: json["tipe"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nama": nama,
        "alamat": alamat,
        "kabupaten": kabupaten,
        "telp": telp,
        "email": email,
        "tipe": tipe,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
