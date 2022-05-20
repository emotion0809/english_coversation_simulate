class Message {
  final String time;
  final String text;
  final bool isUser;

  Message({
    required this.time,
    required this.text,
    required this.isUser,
  });
}
List<Message> messages = [
];
