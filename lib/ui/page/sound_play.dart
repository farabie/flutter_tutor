import 'package:flutter/material.dart';

///Karena susah cari mp3 nya jadi dilewati

class SoundPlayFlut extends StatefulWidget {
  const SoundPlayFlut({Key? key}) : super(key: key);

  @override
  State<SoundPlayFlut> createState() => _SoundPlayFlutState();
}

class _SoundPlayFlutState extends State<SoundPlayFlut> {
  // AudioPlayer audioPlayer;
  // String durasi = "00:00:00";

  // _SoundPlayFlutState() {
  //   audioPlayer = AudioPlayer();
  //   audioPlayer.onPlayerStateChanged.listen((duration) {
  //     setState(() {
  //       durasi = duration.toString();
  //     });
  //   });
  //   //Untuk memainkan musik secara berulang jika musik telah selesai dijalankan
  //   audioPlayer.setReleaseMode(ReleaseMode.loop);
  // }

  // void playSound(String url) async {
  //   await audioPlayer.play(url);
  // }

  // void pauseSound() async {
  //   await audioPlayer.pause();
  // }

  // void stopSound() async {
  //   await audioPlayer.stop();
  // }

  // void resumeSound() {
  //   audioPlayer.resume();
  // }

  // void localSound(String LocalPath) async {
  //   await audioPlayer.play(LocalPath, isLocal: true);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Memainkan Musik'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // playSound(
                  //     'http://ia802609.us.archive.org/13/items/quraninindonesia/001AlFaatihah.mp3');
                  // localSound(
                  //     'http://ia802609.us.archive.org/13/items/quraninindonesia/001AlFaatihah.mp3');
                },
                child: const Text(
                  'Play',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Pause',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Stop',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Resume',
                ),
              ),
              const Text(
                'Kosong',
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
