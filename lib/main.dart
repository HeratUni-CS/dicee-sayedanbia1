import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Center(child: Text('TestDice'),), backgroundColor: Colors.red,
      ),
      body:Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDicenumber=1;
  int rightDicenumber=2;
  void ChangeDice(){
    setState(() {
      rightDicenumber=Random().nextInt(6) +1;
      leftDicenumber=Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children:[
          Expanded(
            child:TextButton(onPressed: () {
              ChangeDice();
            },
              child: Padding( padding:EdgeInsets.all(16),child:Image.asset('images/Dice$leftDicenumber.png'),),
            ),
          ),
          Expanded(
            child:TextButton(onPressed: (){
              ChangeDice();
            },
                child:Padding(padding: EdgeInsets.all(16),child: Image.asset('images/Dice$rightDicenumber.png'),
                )

            ),
          ),

        ],
      ),
    );
  }
}

