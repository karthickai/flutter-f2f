import 'package:flutter/material.dart';
import 'package:flutter_f2f/core/utils/responsive.dart';

import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

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
