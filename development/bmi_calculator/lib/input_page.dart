import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_Card.dart';
import 'selector.dart';
import 'constants.dart';


enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(

                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    difColors: selectedGender == Gender.male ? activeCardColors : inActiveCardColors,
                    cardChild: Selector(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    difColors: selectedGender == Gender.female ? activeCardColors : inActiveCardColors,
                    cardChild: Selector(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              difColors: activeCardColors,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text('HEIGHT',
               style: labelTextStyle,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: [
                 Text('180',
                 style: numberstyling),
                 Text('cm',
                 style: labelTextStyle,)
               ],)

             ],),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    difColors: activeCardColors,
                    // cardChild: Text('female'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    difColors: activeCardColors,
                    // cardChild: Text('female'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}



