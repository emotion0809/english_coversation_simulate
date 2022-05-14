import 'package:english_coversation_simulate_re/models/user_model.dart';


class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// YOU - current user
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

// USERS
final User Waitress = User(
    id: 1, name: 'Mistake by the Waitress', imageUrl: 'assets/images/greg.jpg');
final User order =
    User(id: 2, name: 'order', imageUrl: 'assets/images/james.jpg');
final User No_3 =
    User(id: 3, name: 'No_3', imageUrl: 'assets/images/james.jpg');
final User No_4 =
    User(id: 4, name: 'No_4', imageUrl: 'assets/images/james.jpg');
final User No_5 =
    User(id: 5, name: 'No_5', imageUrl: 'assets/images/james.jpg');
final User No_6 =
    User(id: 6, name: 'No_6', imageUrl: 'assets/images/james.jpg');

// FAVORITE CONTACTS
// List<User> favorites = [greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: order,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: "",
    unread: true,
  ),
  Message(
    sender: Waitress,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: '',
    unread: false,
  ),
  Message(
    sender: No_3,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: '',
    unread: false,
  ),
  Message(
    sender: No_4,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: '',
    unread: false,
  ),
  Message(
    sender: No_5,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: '',
    unread: false,
  ),
  Message(
    sender: No_6,
    time:
        DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString(),
    text: '',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  // Message(
  //   sender: james,
  //   time: '5:30 PM',
  //   text: '',
  //   isLiked: true,
  //   unread: true,
  // ),
  // Message(
  //   sender: currentUser,
  //   time: '5:30 PM',
  //   text: '',
  //   isLiked: true,
  //   unread: true,
  // ),
];
