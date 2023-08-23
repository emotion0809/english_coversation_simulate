import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/auth_manager.dart';
import '../models/reply_manager.dart';

class API_Manager {
  static String access_token = "";
  static List<String> bot_reply = ["","","","",""];

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

  static Future<String> reply(String port, String conversationID, String chat) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:$port/webhooks/rest/webhook'),
      /*headers: {
        'Content-Type': 'application/json',
        //HttpHeaders.authorizationHeader: 'Bearer $access_token',
      },*/
      body: {'message' : chat},
    );

    print(response.body.toString());

    return response.body.toString();
  }
}