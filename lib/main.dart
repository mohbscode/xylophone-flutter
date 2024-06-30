import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.teal,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// child: Center(
//             child: TextButton(
//               onPressed: () {
//                 final player = AudioPlayer();
//                 player.play(AssetSource('note1.wav'));
//               },
//               child: const Text(
//                 'SOUND',
//               ),
//             ),
//           ),
