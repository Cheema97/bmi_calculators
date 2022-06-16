// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, empty_constructor_bodies, constant_identifier_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'reusable_card.dart';

const bottomconatinerheight = 80.0;
const bottomconatinercolor = Color(0xFFEB1555);
const Colorstring = Color(0xFF1D1E33);
const inactivecardcolour = Color(0xFF111328);

enum Sex {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex gender;

  Color maleCardColour = inactivecardcolour;
  Color femaleCardColour = inactivecardcolour;

  void updateColor(Sex gender) {
    if (gender == Sex.male) {
      if (maleCardColour == inactivecardcolour) {
        maleCardColour = Colorstring;
        femaleCardColour = inactivecardcolour;
      } else {
        maleCardColour = inactivecardcolour;
      }
    }
    if (gender == Sex.female) {
      if (femaleCardColour == inactivecardcolour) {
        femaleCardColour = Colorstring;
        maleCardColour = inactivecardcolour;
      } else {
        femaleCardColour = inactivecardcolour;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Sex.male;
                      });
                    },
                    child: ReusableCard(
                      colour:
                          gender == Sex.male ? Colorstring : inactivecardcolour,
                      cardChild: Iconcontent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Sex.female;
                      });
                    },
                    child: ReusableCard(
                        colour: gender == Sex.female
                            ? Colorstring
                            : inactivecardcolour,
                        cardChild: Iconcontent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        )),
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
