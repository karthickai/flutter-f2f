import 'package:flutter/material.dart';
import 'package:flutter_f2f/components/components.dart';

class DesktopHomeScreen extends StatefulWidget {
  @override
  _DesktopHomeScreenState createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 100.0),
          child: DesktopAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DesktopMainSection(),
              DesktopFeatureSection(),
            ],
          ),
        ));
  }
}
