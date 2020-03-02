import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain
{

  BmiBrain({this.weight,this.height});
    final int height,weight;
    double _bmi;

    String calculateBmi()
    {
      _bmi=weight/pow(height/100,2);
      return _bmi.toStringAsFixed(1);
    }

    String getResult()
    {
      if(_bmi>=25)
        {
          return 'Over-Weight';
        }
      else if(_bmi>=18)
        {
          return 'Normal';
        }
      else
        {
          return 'Under-Weight';
        }
    }
  String getDescription()
  {
    if(_bmi>=25)
    {
      return 'Your BMI result is high,Eat Less';
    }
    else if(_bmi>=18)
    {
      return 'Your BMI result is Normal,You are perfect';
    }
    else
    {
      return 'Your BMI result is low, Eat More';
    }
  }

}