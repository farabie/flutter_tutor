import 'package:flutter/material.dart';

class HiveFlut extends StatelessWidget {
  const HiveFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hive Flut Demo'),
        ),
        body: const Center(
          child: Text('Untuk Materi Silahkan Cek Repository Hive Flut'),
        ),
      ),
    );
  }
}
