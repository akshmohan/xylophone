import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            playSound(noteNumber);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildKey(color: Colors.teal, noteNumber: 1),
                buildKey(color: Colors.yellow, noteNumber: 2),
                buildKey(color: Colors.red, noteNumber: 3),
                buildKey(color: Colors.white, noteNumber: 4),
                buildKey(color: Colors.black, noteNumber: 5),
                buildKey(color: Colors.orange, noteNumber: 6),
                buildKey(color: Colors.pink, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
