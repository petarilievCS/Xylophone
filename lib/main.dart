import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  void playSound(int soundNumber) {
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildTile(int soundNumber, MaterialColor color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(""),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTile(1, Colors.red),
              buildTile(2, Colors.orange),
              buildTile(3, Colors.yellow),
              buildTile(4, Colors.green),
              buildTile(5, Colors.teal),
              buildTile(6, Colors.blue),
              buildTile(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
