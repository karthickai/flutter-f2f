import 'package:flutter/material.dart';
import 'package:flutter_f2f/core/themes/palette.dart';
import 'package:flutter_svg/svg.dart';

class DesktopFeatureSection extends StatefulWidget {
  @override
  _DesktopFeatureSectionState createState() => _DesktopFeatureSectionState();
}

class _DesktopFeatureSectionState extends State<DesktopFeatureSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      color: Palette.BackgroundWhiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 650,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hassle-Free Movies Watching',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TitleFont',
                      color: Palette.buttonColorFocus,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Our Smart AI Engine will Blur all your movie NSFW scenes including (Kiss, Nudity..) Just upload your movie in our portal within few minutes all your unwanted content in your movie is blurred out. finally download and safely watch the movie with your family!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Palette.blackTextColor,
                    ),
                  ),
                ],
              )),
          SizedBox(
            width: 50,
          ),
          Container(
            width: 400,
            height: 400,
            child: SvgPicture.asset("assets/images/BackgroundImage.svg"),
          ),
        ],
      ),
    );
  }
}
