
import 'package:flutter/material.dart';
import 'constans.dart';

class Button extends StatelessWidget {

  Button({@required this.onTap,@required this.text});
  final Function onTap;
  final String text;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600

            ),
          ),
        ),
        color: kButton_background_color,
        margin: EdgeInsets.only(top: 10),
        height: 50,
        width: double.infinity,
      ),
    );
  }
}

class RoundActionButton extends StatelessWidget {
  RoundActionButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4CF5E),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
//      elevation: 6.0,
      onPressed: onPressed,
    );
  }
}
