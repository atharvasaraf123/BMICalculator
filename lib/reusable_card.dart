
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour,this.card,this.onPress});
  final Color colour;
  final Widget card;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: card,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
