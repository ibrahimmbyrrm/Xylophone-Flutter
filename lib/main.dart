import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int? soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded buildButton({Color? color,int? soundNumber}) {
    return Expanded(
        child: ElevatedButton(
          child: Container(
            color: color,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: color
          ),
          onPressed: () {
            playSound(soundNumber);
          },
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      color: Colors.black,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.red,soundNumber: 1),
              buildButton(color: Colors.orange,soundNumber: 2),
              buildButton(color: Colors.yellow,soundNumber: 3),
              buildButton(color: Colors.green,soundNumber: 4),
              buildButton(color: Colors.teal,soundNumber: 5),
              buildButton(color: Colors.blue,soundNumber: 6),
              buildButton(color: Colors.purple,soundNumber: 7),
            ],
          ),

        ),
      ),
    );
  }
}


