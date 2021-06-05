import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlayer(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({MaterialColor col, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          soundPlayer(soundNumber);
        },
        color: col,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(col: Colors.red, soundNumber: 1),
              buildKey(col: Colors.orange, soundNumber: 2),
              buildKey(col: Colors.yellow, soundNumber: 3),
              buildKey(col: Colors.green, soundNumber: 4),
              buildKey(col: Colors.teal, soundNumber: 5),
              buildKey(col: Colors.blue, soundNumber: 6),
              buildKey(col: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
