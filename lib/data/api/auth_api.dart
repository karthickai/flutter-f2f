import 'dart:convert';

import 'package:flutter_f2f/core/constants/api.dart';
import 'package:flutter_f2f/data/models/login.dart';
import 'package:flutter_f2f/data/models/user_session.dart';
import 'package:http/http.dart' show Client;

class AuthApiProvider {
  Client client = Client();

  Future<UserSession> login(LoginRequestData loginRequestData) async {
    final response = await client.post(loginUrl,
        headers: {"Content-Type": "application/json; charset=utf-8"},
        body: jsonEncode(loginRequestData.toJson()));
    print(response.body.toString());

    if (response.statusCode == 200) {
      return UserSession.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
