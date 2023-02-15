import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class Piano extends StatefulWidget {
  const Piano({super.key});

  @override
  State<Piano> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Piano> {
  final Audio audio1 = Audio.load('assets/sounds/assets_note1.wav');
  final Audio audio2 = Audio.load('assets/sounds/assets_note2.wav');
  final Audio audio3 = Audio.load('assets/sounds/assets_note3.wav');
  final Audio audio4 = Audio.load('assets/sounds/assets_note4.wav');
  final Audio audio5 = Audio.load('assets/sounds/assets_note5.wav');
  final Audio audio6 = Audio.load('assets/sounds/assets_note6.wav');
  final Audio audio7 = Audio.load('assets/sounds/assets_note7.wav');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            teclaPiano(audio1, Colors.red),
            teclaPiano(audio2, Colors.orange),
            teclaPiano(audio3, Colors.yellow),
            teclaPiano(audio4, Colors.green),
            teclaPiano(audio5, Colors.cyan),
            teclaPiano(audio6, Colors.blue),
            teclaPiano(audio7, Colors.purple),
          ],
        ),
      ),
    );
  }

  Expanded teclaPiano(Audio tecla, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          tecla.play();
        },
        child: Container(),
      ),
    );
  }
}
