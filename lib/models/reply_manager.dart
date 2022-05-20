
import 'dart:convert';

List<Reply> replyFromJson(String str) => List<Reply>.from(json.decode(str).map((x) => Reply.fromJson(x)));

String replyToJson(List<Reply> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Reply {
  Reply({
    required this.recipientId,
    required this.text,
  });

  String recipientId;
  String text;

  factory Reply.fromJson(Map<String, dynamic> json) => Reply(
    recipientId: json["recipient_id"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "recipient_id": recipientId,
    "text": text,
  };
}