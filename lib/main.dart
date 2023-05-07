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

class _DicepageState {
}
