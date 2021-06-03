import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];



  Widget createMusicButton(int buttonNum) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note${buttonNum+1}.wav');
        },
        style: TextButton.styleFrom(
          backgroundColor: colors[buttonNum],
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          )
        ),
      ),
    );
  }

  int buttonNum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              createMusicButton(0),
              createMusicButton(1),
              createMusicButton(2),
              createMusicButton(3),
              createMusicButton(4),
              createMusicButton(5),
              createMusicButton(6),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note1.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.red,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note2.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.orange,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note3.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.yellow,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note4.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.green,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note5.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.teal,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note6.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.blue,
              //   ),
              // ),
              // TextButton(
              //   onPressed: () {
              //     final AudioCache player = AudioCache();
              //     player.play('note7.wav');
              //   },
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     color: Colors.purple,
              //   ),
              // ),
          ]
          ),
        ),
      ),
    );
  }
}
