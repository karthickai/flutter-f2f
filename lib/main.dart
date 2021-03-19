import 'package:flutter/material.dart';
import 'package:flutter_f2f/screens/screens.dart';
import 'package:flutter_f2f/themes/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'L4Dimensions Website',
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginScreen(),
        '/': (context) => NavScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Palette.scaffold),
      // home: NavScreen(),
    );
  }
}
