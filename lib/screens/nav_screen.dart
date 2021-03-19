import 'package:flutter/material.dart';
import 'package:flutter_f2f/screens/desktop/desktop.dart';
import 'package:flutter_f2f/screens/mobile/mobile.dart';
import 'package:flutter_f2f/utils/utils.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? DesktopHomeScreen()
        : MobileHomeScreen();
  }
}
