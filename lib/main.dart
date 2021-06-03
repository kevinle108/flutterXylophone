import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {




  Widget createMusicButton({Color color, int soundNum}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note$soundNum.wav');
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
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

              createMusicButton(color: Colors.red, soundNum: 1),
              createMusicButton(color: Colors.yellow, soundNum: 2),
              createMusicButton(color: Colors.orange, soundNum: 3),
              createMusicButton(color: Colors.green, soundNum: 4),
              createMusicButton(color: Colors.teal, soundNum: 5),
              createMusicButton(color: Colors.blue, soundNum: 6),
              createMusicButton(color: Colors.purple, soundNum: 7),

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
