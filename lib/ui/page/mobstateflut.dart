import 'package:flutter/material.dart';

class MobStatexFlut extends StatelessWidget {
  const MobStatexFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo MobStateX'),
        ),
        body: const Center(
          child: Text('Cek Di Repository MobState x'),
        ));
  }
}
