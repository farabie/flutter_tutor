import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

///Karena susah cari mp3 nya jadi dilewati

class SoundPlayFlut extends StatefulWidget {
  const SoundPlayFlut({Key key}) : super(key: key);

  @override
  State<SoundPlayFlut> createState() => _SoundPlayFlutState();
}

class _SoundPlayFlutState extends State<SoundPlayFlut> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _SoundPlayFlutState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerStateChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    //Untuk memainkan musik secara berulang jika musik telah selesai dijalankan
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Memainkan Musik'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // playSound(
                  //     'http://ia802609.us.archive.org/13/items/quraninindonesia/001AlFaatihah.mp3');
                },
                child: Text(
                  'Play',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text(
                  'Pause',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text(
                  'Stop',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text(
                  'Resume',
                ),
              ),
              Text(
                durasi,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
