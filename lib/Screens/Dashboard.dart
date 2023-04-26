import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  AudioPlayer player;

  _runAudio(String path) async {
    try {
      await player?.play(AssetSource(path));
    } catch (e) {
      //print(e.toString());
    }
  }

  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota1.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.teal),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota2.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota3.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota4.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota5.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota6.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: null,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _runAudio('nota7.wav');
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.brown),
                    child: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
