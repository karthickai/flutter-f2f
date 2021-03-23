import 'package:flutter/material.dart';
import 'package:flutter_f2f/core/themes/palette.dart';
import 'package:flutter_svg/svg.dart';

class DesktopMainSection extends StatefulWidget {
  @override
  _DesktopMainSectionState createState() => _DesktopMainSectionState();
}

class _DesktopMainSectionState extends State<DesktopMainSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      color: Palette.BackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 600,
            height: 600,
            child: SvgPicture.asset("assets/images/BackgroundImageMask.svg"),
          ),
          Container(
            width: 500,
            height: 320,
            child: Text(
              'Enjoy Movies with your Family',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily: 'TitleFont',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
