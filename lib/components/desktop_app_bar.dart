import 'package:flutter/material.dart';
import 'package:flutter_f2f/themes/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopAppBar extends StatefulWidget {
  @override
  _DesktopAppBarState createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 75.0,
      decoration: BoxDecoration(
        color: Palette.BackgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: SvgPicture.asset("assets/images/L4Dimensions.svg"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "L4Dimensions",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PopupMenuButton(
                  child: Row(
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  itemBuilder: (BuildContext bc) => [
                    PopupMenuItem(
                        child: Text("AI Movie Assistant"), value: "/newchat"),
                  ],
                  onSelected: (route) {
                    print(route);
                    // Note You must create respective pages for navigation
                    // Navigator.pushNamed(context, route);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    child: Text(
                      'Pricing',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    child: Text(
                      'About Us',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    child: Text(
                      'Contact',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }),
                SizedBox(
                  width: 56,
                ),
                TextButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 21.0),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: Palette.buttonColor, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 21.0),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
