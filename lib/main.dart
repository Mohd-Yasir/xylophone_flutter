import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int i) {
    final audioCache = AudioPlayer();
    audioCache.play(AssetSource('note$i.wav'));
  }

  Expanded buildKey(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const BeveledRectangleBorder(),
        ),
        onPressed: () {
          play(soundNumber);
        },
        child: Container(),
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
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.teal),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
