import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playSound (int soundNumber ){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded xylophone_key ({Color color , int soundNumber , int noteNumber }){
   return Expanded(
    child: FlatButton(
      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
      color: color,
      onPressed: (){
        playSound(soundNumber);
      },
      child: Text('Note $noteNumber', style: TextStyle(
          color: Colors.white
      ),),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              xylophone_key(color: Colors.red,soundNumber: 1,noteNumber : 1 ),
              xylophone_key(color: Colors.orange,soundNumber: 2,noteNumber : 2 ),
              xylophone_key(color: Colors.yellow,soundNumber: 3,noteNumber : 3 ),
              xylophone_key(color: Colors.green,soundNumber: 4,noteNumber : 4 ),
              xylophone_key(color: Colors.teal,soundNumber: 5,noteNumber : 5 ),
              xylophone_key(color: Colors.blue,soundNumber: 6,noteNumber : 6 ),
              xylophone_key(color: Colors.purple,soundNumber: 7,noteNumber : 7 ),
            ],
          )
        ),
      ),
    );
  }
}
