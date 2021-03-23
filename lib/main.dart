import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_f2f/core/constants/constants.dart';
import 'package:flutter_f2f/core/themes/palette.dart';
import 'package:flutter_f2f/data/repositories/auth_repository.dart';
import 'package:flutter_f2f/presentation/router/app_router.dart';
import 'package:flutter_f2f/presentation/screens/screens.dart';

import 'logic/bloc/authentication/authentication_bloc.dart';

void main() {
  Core.authRepository = AuthRepository();

  runApp(BlocProvider<AuthenticationBloc>(
    create: (context) {
      return AuthenticationBloc(authRepository: Core.authRepository)
        ..add(AppStarted());
    },
    child: MyApp(
      authRepository: Core.authRepository,
      appRouter: AppRouter(authRepository: Core.authRepository),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;
  final AppRouter appRouter;

  MyApp({Key key, @required this.authRepository, this.appRouter})
      : assert(authRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'L4Dimensions Website',
      // initialRoute: '/',
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Palette.scaffold),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return NavScreen();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginScreen(authRepository: authRepository);
          }
          return LoginScreen(authRepository: authRepository);
        },
      ),
    );
  }
}
