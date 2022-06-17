// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'reusable_card.dart';

const bottomconatinerheight = 80.0;
const bottomconatinercolor = Color(0xFFEB1555);
const Colorstring = Color(0xFF1D1E33);
const inactivecardcolour = Color(0xFF111328);
const buttonText = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? Colorstring
                        : inactivecardcolour,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? Colorstring
                        : inactivecardcolour,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Colorstring,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: buttonText,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: <Widget>[
          //       Expanded(
          //         child: ReusableCard(
          //           cardChild: ,
          //           colour: Colorstring,
          //         ),
          //       ),
          //       Expanded(
          //         child: ReusableCard(
          //           colour: Colorstring,
          //           cardChild: ,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            color: bottomconatinercolor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomconatinerheight,
          )
        ],
      ),
    );
  }
}
