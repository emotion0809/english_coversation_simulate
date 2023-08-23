import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/auth_manager.dart';
import '../models/reply_manager.dart';

class API_Manager {
  static String access_token = "";
  static List<String> bot_reply = ["", "", "", "", ""];

  Future<Auth> getAuth(String port) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:$port/api/auth'),
      body: '{"username": "me", "password": "PASSWORD"}',
    );

    //return NewModel.fromJson(json.decode(response.body));
    if (response.statusCode == 200) {
      return Auth.fromJson(json.decode(response.body));
    } else {
      throw Exception('Access denied');
    }
  }

  static Future<String> reply(String port, String chat) async {
    print({
      'message': chat,
      'sender': 'user',
    });
    final response = await http.post(
      Uri.http('localhost:${port}', '/webhooks/rest/webhook'),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
      },
      body: {
        'message': chat,
        'sender': 'user',
      },
    );

    print(response.body.toString());

    return response.body.toString();
  }
}
