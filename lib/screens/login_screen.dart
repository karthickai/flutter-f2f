import 'package:flutter/material.dart';
import 'package:flutter_f2f/utils/responsive.dart';

import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? DesktopLoginScreen()
        : MobileLoginScreen();
  }
}
