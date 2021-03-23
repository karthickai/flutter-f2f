import 'package:flutter/material.dart';
import 'package:flutter_f2f/data/repositories/auth_repository.dart';
import 'package:flutter_f2f/presentation/screens/login_screen.dart';
import 'package:flutter_f2f/presentation/screens/nav_screen.dart';
import 'package:flutter_f2f/presentation/screens/screens.dart';

class AppRouter {
  AuthRepository authRepository;
  AppRouter({@required this.authRepository});

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => NavScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(
            authRepository: authRepository,
          ),
        );
      case '/sign_up':
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case '/forgot_password':
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );
      case '/confirm_code':
        return MaterialPageRoute(
          builder: (_) => ConfirmCodeScreen(),
        );
      default:
        return null;
    }
  }
}
