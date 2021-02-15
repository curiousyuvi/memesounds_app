import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(child: Text('Meme Sounds Player')),
        ),
        backgroundColor: Colors.white,
        body: MemePlayer(),
      ),
    ),
  );
}

class MemePlayer extends StatelessWidget {
  void MemePlay(meme) async {
    final player = AudioPlayer();
    var duration = await player.setAsset('assets/$meme.mp3');
    player.play();
  }

  Expanded buildExpanded(String meme, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          MemePlay(meme);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildExpanded("Bitch", Colors.red),
          buildExpanded("Bruh", Colors.yellow),
          buildExpanded("DeezNuts", Colors.green),
          buildExpanded("HelpMe", Colors.blue),
          buildExpanded("Horn", Colors.indigo),
          buildExpanded("Shut", Colors.purple)
        ],
      ),
    );
  }
}
