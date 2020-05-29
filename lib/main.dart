//import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),

        body: DicePage( ),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 3;


  void changeFace(){
    setState(() {
    leftDiceNum =Random().nextInt(6)+1;
    });
  }
  void changeRface(){
    setState(() {
      rightDiceNum = Random().nextInt(6)+1;});
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                changeRface();
                },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){
                changeFace();
                },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),


         ],
      ),

    );

  }
}

