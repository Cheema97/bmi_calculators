// ignore_for_file: prefer_const_constructors, empty_constructor_bodies

import 'package:bmi_calculator/bottombutton.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiresult,
      required this.resulttext,
      required this.interpretation});

  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calaculator'),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Colorstring,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    resulttext.toUpperCase(),
                    style: resulttextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: bmitextstyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: bodytextstyle,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Buttombutton(
            buttonTittle: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

const resulttextstyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const bmitextstyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const bodytextstyle = TextStyle(
  fontSize: 22.0,
);
