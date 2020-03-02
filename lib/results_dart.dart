import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constans.dart';
import 'BottomButto.dart';
import 'input_page.dart';


class Result extends StatelessWidget {

  Result({@required this.BMI,@required this.resultText,@required this.desc});

  final String BMI;
  final String resultText;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Your BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:ReusableCard(
              colour: kActive_color,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText,style: kResultStyle,
                  ),
                 Text(BMI,style: kBMITextStyle,
                  ),
                  Text(desc,style: kbodyTextStyle,
                  textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          Button(
            text: 'RECALCULATE BMI',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
