import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}
final audio2 = AudioPlayer();
Play(int soundNumber) {
  audio2.play(
    AssetSource("note$soundNumber.mp3"),
  );
}

Container button(
    {required Color color, required int soundNumber, required String text}) {
  return Container(
    child: MaterialButton(
      child: Text("$text"),
      color: color,
      onPressed: () {
        Play(soundNumber);
      },
    ),
  );
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(color: Colors.red, soundNumber: 1, text: "Kesariya"),
                button(
                    color: Colors.green,
                    soundNumber: 2,
                    text: "Tu aake Dekhle"),
                button(color: Colors.teal, soundNumber: 3, text: "saari tyari"),
                button(
                    color: Colors.yellow,
                    soundNumber: 4,
                    text: "Har har sambhu"),
                button(
                    color: Colors.blue, soundNumber: 5, text: "Rataan lambiya"),
                button(
                    color: Colors.blueGrey,
                    soundNumber: 6,
                    text: "Mera dil ye"),
                button(
                    color: Colors.redAccent,
                    soundNumber: 7,
                    text: "Chand Sitare"),
                button(
                    color: Colors.yellowAccent,
                    soundNumber: 8,
                    text: "me teri Aankho"),
                FloatingActionButton(
                  onPressed: () {
                    audio2.pause();
                  },
                  child: Text('Pause'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    audio2.stop();
                  },
                  child: Text('Stop'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    audio2.resume();
                  },
                  child: Text('Resume'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






