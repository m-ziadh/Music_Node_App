import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.music_note),
            title: const Text('Make Your Own Tone'),
            backgroundColor: Colors.black,
          ),
          body: KeyBoard(),
        ),
      ),
    ),
  );
}

class KeyBoard extends StatelessWidget {
  @override

  void PlayTone(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget keyNode(Color color, String name, int n){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          PlayTone(n);
        },
        color: color,
        child: Text(name),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        keyNode(Colors.red, 'Node 1', 1),
        keyNode(Colors.orange, 'Node 2', 2),
        keyNode(Colors.yellow, 'Node 3', 3),
        keyNode(Colors.green, 'Node 4', 4),
        keyNode(Colors.teal, 'Node 5', 5),
        keyNode(Colors.blue, 'Node 6', 6),
        keyNode(Colors.purple, 'Node 7', 7),
      ],
    );
  }
}
