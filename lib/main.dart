import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$sound.wav"));
  }

  Widget builtKey(Color color, int sound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          backgroundColor: color,
        ),
        onPressed: (() => playSound(sound)),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                builtKey(Colors.red, 1),
                builtKey(Colors.orange, 2),
                builtKey(Colors.yellow, 3),
                builtKey(Colors.green, 4),
                builtKey(Colors.blue, 5),
                builtKey(Colors.blue[900], 6),
                builtKey(Colors.purple, 7),
              ],
            ),
          ),
        ));
  }
}
