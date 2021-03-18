import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopAppBar extends StatefulWidget {
  @override
  _DesktopAppBarState createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 3, 11, 13),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            child: SvgPicture.asset("assets/images/L4Dimensions.svg"),
          ),
        ],
      ),
    );
  }
}
