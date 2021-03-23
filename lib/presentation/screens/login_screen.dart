import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_f2f/core/utils/responsive.dart';
import 'package:flutter_f2f/data/repositories/auth_repository.dart';
import 'package:flutter_f2f/logic/bloc/authentication/authentication_bloc.dart';
import 'package:flutter_f2f/logic/bloc/login/login_bloc.dart';

import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

class LoginScreen extends StatelessWidget {
  final AuthRepository authRepository;

  LoginScreen({Key key, @required this.authRepository})
      : assert(authRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            authRepository: authRepository,
          );
        },
        child: Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? DesktopLoginScreen()
            : MobileLoginScreen());
  }
}
