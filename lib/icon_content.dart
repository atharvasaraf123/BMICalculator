import 'package:flutter/material.dart';
import 'constans.dart';



class IconWidget extends StatelessWidget {

  IconWidget({this.icon,this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
