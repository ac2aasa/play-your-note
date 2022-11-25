import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(int sound_num){
    AudioPlayer audioPlayer = AudioPlayer();
    dynamic file = audioPlayer.audioCache.load("note$sound_num.wav");
    audioPlayer.play(file);

  }
  Expanded Sevenkey({Color color , int sound_num}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          Playsound(sound_num);
      }
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Sevenkey(color: Colors.red, sound_num: 1),
              Sevenkey(color: Colors.orange, sound_num:2),
              Sevenkey(color: Colors.yellowAccent, sound_num:3),
              Sevenkey(color: Colors.green, sound_num:4),
              Sevenkey(color: Colors.blue, sound_num:5),
              Sevenkey(color: Colors.indigo, sound_num:6),
              Sevenkey(color: Colors.purple, sound_num:7),
            ],
          )
        ),
      ),
    );
  }
}
