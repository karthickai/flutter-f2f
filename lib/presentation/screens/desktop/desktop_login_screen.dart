import 'package:flutter/material.dart';
import 'package:flutter_f2f/core/themes/palette.dart';
import 'package:flutter_f2f/presentation/components/login_form.dart';
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
            child: Row(
              children: [
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
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: const Icon(Icons.close),
                                  color: Colors.white,
                                  tooltip: 'Close',
                                  iconSize: 30,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  })
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                            LoginForm(
                                paddingTopForm: 0,
                                fontSizeTextField: 0.009,
                                fontSizeTextFormField: 16,
                                spaceBetweenFields: 0.04,
                                iconFormSize: 0.01,
                                spaceBetweenFieldAndButton: 0.04,
                                widthButton: 75,
                                fontSizeButton: 0.01,
                                fontSizeForgotPassword: 0.007,
                                fontSizeSnackBar: 0.01,
                                errorFormMessage: 0.006)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
