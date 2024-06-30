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
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: const Text('Xylophone'),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.red,
                    child: const Icon(
                      Icons.circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.orange,
                    child: const Icon(
                      Icons.circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.green,
                    child: const Icon(
                      Icons.circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.blue,
                    child: const Icon(
                      Icons.circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.yellow,
                    child: const Icon(
                      Icons.circle,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.teal,
                    child: const Center(
                      child: Icon(
                        Icons.circle,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    color: Colors.brown,
                    child: const Center(
                      child: Icon(
                        Icons.circle,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
