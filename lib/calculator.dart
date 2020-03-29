import 'dart:math';

class Calculator{
  Calculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a body weight which is higher than normal. Try to lose some weight.';
    }else if(_bmi > 18.5){
      return 'Great. You have a normal body weight.';
    }else{
      return 'You have a body weight which is lower than normal. Try to eat more and gain some weight.';
    }
  }
}