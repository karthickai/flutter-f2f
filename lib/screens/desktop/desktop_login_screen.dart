import 'package:flutter/material.dart';
import 'package:flutter_f2f/components/login_form.dart';
import 'package:flutter_f2f/themes/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopLoginScreen extends StatefulWidget {
  @override
  _DesktopLoginScreenState createState() => _DesktopLoginScreenState();
}

class _DesktopLoginScreenState extends State<DesktopLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    return Container(
        color: Palette.BackgroundColor,
        child: Center(
            child: Container(
                height: heightSize * 0.65,
                width: widthSize * 0.65,
                child: Card(
                    elevation: 0,
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Palette.BackgroundWhiteColor,
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                                "assets/images/FormBackgroundImage.svg",
                                height: heightSize * 0.5,
                                width: widthSize * 0.5),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.only(top: 20),
                              color: Palette.FooterBackgroundColor,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          child: SvgPicture.asset(
                                              "assets/images/L4Dimensions.svg"),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "L4Dimensions",
                                          style: TextStyle(
                                              fontFamily: 'LogoFont',
                                              color: Colors.white,
                                              fontSize: 56.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1.8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 60),
                                    LoginForm(0, 0.009, 16, 0.04, 0.01, 0.04,
                                        75, 0.01, 0.007, 0.01, 0.006)
                                  ])))
                    ])))));
  }
}
