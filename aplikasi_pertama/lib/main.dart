import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BmiCalculator(),
    ));

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Halo selamat belajar flutter'),
            Image.network('https://picsum.photos/250?image=9'),
            Image.asset('assets/img/android.jpg')
          ],
        ),
      ),
    );
  }
}
