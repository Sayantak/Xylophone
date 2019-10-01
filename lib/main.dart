import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav'); //Plays specific audio files
  }

  Widget buildKey(int soundNumber, String name, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: Text(
          name,
          style: TextStyle(fontFamily: 'Pacifico'), //Imported Font use
        ),
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[ //Conatins keys to be played
              buildKey(1, 'Do', Colors.red),
              buildKey(2, 'Re', Colors.orange),
              buildKey(3, 'Mi', Colors.yellow),
              buildKey(4, 'Fa', Colors.green),
              buildKey(5, 'So', Colors.teal),
              buildKey(6, 'La', Colors.blue),
              buildKey(7, 'Ti', Colors.purple),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, //Removes Debug Banner
    );
  }
}
