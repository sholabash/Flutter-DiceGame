import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('DiceGameFastMoneyForBoys'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
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
  int rightDiceNum = 1;
  diceFacehange(){
    setState(() {
      leftDiceNum =  Random().nextInt(6) +  1;
      rightDiceNum = Random().nextInt(6) +  1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          Expanded(

            child: TextButton(
              onPressed: (){

                diceFacehange();

              },
              child: Image.asset('images/dice$leftDiceNum.png'
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){

                diceFacehange();


              },
              child: Image.asset('images/dice$rightDiceNum.png'
              ),
            ),
          ),


        ],

      ),
    );
  }
}
