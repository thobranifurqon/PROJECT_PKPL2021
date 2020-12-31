import 'dart:convert';

class PressRelease {
  PressRelease({
    this.id,
    this.judul,
    this.lokasiFile,
    this.ukuranFile,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String judul;
  String lokasiFile;
  String ukuranFile;
  DateTime createdAt;
  DateTime updatedAt;

  factory PressRelease.fromJson(String str) =>
      PressRelease.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PressRelease.fromMap(Map<String, dynamic> json) => PressRelease(
        id: json["id"],
        judul: json["judul"],
        lokasiFile: json["lokasi_file"],
        ukuranFile: json["ukuran_file"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "judul": judul,
        "lokasi_file": lokasiFile,
        "ukuran_file": ukuranFile,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
