import 'dart:convert';

class Faq {
  Faq({
    this.id,
    this.question,
    this.answer,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String question;
  String answer;
  DateTime createdAt;
  DateTime updatedAt;

  factory Faq.fromJson(String str) => Faq.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Faq.fromMap(Map<String, dynamic> json) => Faq(
        id: json["id"],
        question: json["question"],
        answer: json["answer"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "question": question,
        "answer": answer,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
