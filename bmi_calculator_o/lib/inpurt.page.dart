import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_widget.dart';
import 'icon_content.dart';

const bottomContainerHeight = 50.0;
const activedCardColour = Color(0xFF1D1E33);
const inActiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColour;
  Color femaleCardColour = inActiveCardColour;

  // 1 = male, 2 = female
  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == inActiveCardColour) {
        maleCardColour = activedCardColour;
        femaleCardColour = inActiveCardColour;
      } else {
        maleCardColour = inActiveCardColour;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColour == inActiveCardColour) {
        femaleCardColour = activedCardColour;
        maleCardColour = inActiveCardColour;
      } else {
        femaleCardColour = inActiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Untuk pilihan jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: ReusableWidgetBox(
                    color: maleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: ReusableWidgetBox(
                    color: femaleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )),
              ],
            )),

            // Untuk mengatur tinggi
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableWidgetBox(color: inActiveCardColour))
              ],
            )),

            // Untuk berat dan umur

            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableWidgetBox(
                  color: inActiveCardColour,
                )),
                Expanded(child: ReusableWidgetBox(color: inActiveCardColour)),
              ],
            )),

            // Untuk tombol calculate

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                  color: bottomContainerColor), //Color(0xFF1D1E33),
              // borderRadius: BorderRadius.circular(10.0)),
              height: bottomContainerHeight,
              width: double.infinity,
              child: Text("CALCULATE"),
            )
          ],
        ));
  }
}
