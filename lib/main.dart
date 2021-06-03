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
            )),
      ),
    );
  }

  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];

  int buttonNum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: new ListView.builder(
            itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: TextButton(
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note${index+1}.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: colors[index],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    )),
              ),
            );
          }),
        ),
      ),
    );
  }
}
