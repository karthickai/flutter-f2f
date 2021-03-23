import 'package:flutter/material.dart';
import 'package:flutter_f2f/data/api/auth_api.dart';
import 'package:flutter_f2f/data/models/login.dart';
import 'package:flutter_f2f/data/models/user_session.dart';

class AuthRepository {
  UserSession userSession = UserSession();

  Future<UserSession> authenticate({
    @required String email,
    @required String password,
  }) async {
    AuthApiProvider authApiProvider = AuthApiProvider();
    LoginRequestData loginRequestData =
        LoginRequestData(email: email, password: password);
    print(loginRequestData.email + "   " + loginRequestData.password);

    userSession = await authApiProvider.login(loginRequestData);
    return userSession;
  }
}
