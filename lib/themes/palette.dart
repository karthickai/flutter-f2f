import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color facebookBlue = Color(0xFF1777F2);

  static const Color logoColor = Color.fromARGB(255, 36, 209, 179);

  static const Color BackgroundColor = Color.fromARGB(255, 3, 11, 13);

  static const Color buttonColorFocus = Color.fromARGB(255, 229, 128, 37);

  static const Color buttonColor = Color.fromARGB(255, 214, 115, 26);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
