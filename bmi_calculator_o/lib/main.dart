import 'package:bmi_calculator_o/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_o/screens/inpurt.page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
      debugShowCheckedModeBanner: true,
      routes: {ResultPage.routeName: (context) => ResultPage()},
    );
  }
}
