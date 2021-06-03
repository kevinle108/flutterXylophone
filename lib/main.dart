import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note1.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note2.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note3.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note4.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note5.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.teal,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note6.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note7.wav');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.purple,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
