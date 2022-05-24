import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void changeDice(){
      setState((){
        diceNumber = Random().nextInt(6)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: Image.asset("assets/$diceNumber.png", height: 250, width: 250,)),
          MaterialButton(onPressed:changeDice,
            child: Text("Roll Dice", style: TextStyle(color: Colors.white),),
            color: Colors.blue,
          ),
          SizedBox(height: 70,),
          Text("Simple Game With Flutter", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
