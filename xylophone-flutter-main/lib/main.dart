import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int song) {
    final player = AudioCache();
    player.play("note$song.wav");
  }

  Expanded buildkey({Color color, int song}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(song);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Center(
            child: Text(
              "Sweet Piano",
              style: TextStyle(fontFamily: "Redressed", fontSize: 70),
            ),
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.white, song: 1),
              buildkey(color: Colors.deepOrange, song: 2),
              buildkey(color: Colors.blue, song: 3),
              buildkey(color: Colors.pink, song: 4),
              buildkey(color: Colors.yellow, song: 5),
              buildkey(color: Colors.green, song: 6),
              buildkey(color: Colors.black, song: 7),
            ],
          ),
        ),
      ),
    );
  }
}
