import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void noteNumber(num){
      final orin = AudioCache();
      orin.play('fart$num.wav');
    }
    Expanded names({Color color, int soundNumber, String name }){
      return Expanded(
        child: FlatButton(
          child: Text('$name',
            style: TextStyle(fontFamily: 'Chakra'),),
          color: color,
          onPressed: (){
            noteNumber(soundNumber);
          },
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text('CALIFORNIA JACUZZI BOYS', style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Chakra',
                  letterSpacing: 2,
                ),),
              ),
              names(color: Colors.red, soundNumber: 1, name: 'Afeez'),
              names(color: Colors.orange, soundNumber: 2, name: 'Tise'),
              names(color: Colors.yellow, soundNumber: 3, name: 'Pelummy'),
              names(color: Colors.green, soundNumber: 4, name: 'Faka'),
              names(color: Colors.greenAccent, soundNumber: 5, name: 'Jaymz'),
              names(color: Colors.blue, soundNumber: 6, name: 'Champion'),
              names(color: Colors.purple, soundNumber: 7, name: 'Alfather'),


            ],
          ),
        ),
      ),
    );
  }
}

//
// Expanded(
// child: FlatButton(
// child: Text('Tise',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(2);
// },
// color: Colors.orange,
// ),
// ),
// Expanded(
// child: FlatButton(
// child: Text('Pelummy',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(3);
// },
// color: Colors.yellowAccent,
// ),
// ),
// Expanded(
// child: FlatButton(
// child: Text('Faka',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(4);
// },
// color: Colors.green,
// ),
// ),
// Expanded(
// child: FlatButton(
// child: Text('Jaymz',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(5);
// },
// color: Colors.lightGreen,
// ),
// ),
// Expanded(
// child: FlatButton(
// child: Text('Champion',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(6);
// },
// color: Colors.blue,
// ),
// ),
// Expanded(
// child: FlatButton(
// child: Text('Oninure',
// style: TextStyle(fontFamily: 'Chakra'),),
// onPressed: (){
// noteNumber(7);
// },
// color: Colors.purple,
//
// ),
// ),