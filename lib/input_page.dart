import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'reusable_card.dart';

const bottomconatinerheight = 80.0;
const bottomconatinercolor = Color(0xFFEB1555);
const Colorstring = Color(0xFF1D1E33);
const inactivecardcolour = Color(0xFF111328);

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

  // Color maleCardColour = inactivecardcolour;
  // Color femaleCardColour = inactivecardcolour;

  // void updateColor(Sex gender) {
  //   if (gender == Sex.male) {
  //     if (maleCardColour == inactivecardcolour) {
  //       maleCardColour = Colorstring;
  //       femaleCardColour = inactivecardcolour;
  //     } else {
  //       maleCardColour = inactivecardcolour;
  //     }
  //   }
  //   if (gender == Sex.female) {
  //     if (femaleCardColour == inactivecardcolour) {
  //       femaleCardColour = Colorstring;
  //       maleCardColour = inactivecardcolour;
  //     } else {
  //       femaleCardColour = inactivecardcolour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
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
          /*
          Expanded(
            child: ReusableCard(
              colour: Colorstring,
              cardChild: ,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: ,
                    colour: Colorstring,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colorstring,
                    cardChild: ,
                  ),
                ),
              ],
            ),
          ),
          */
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
