import 'package:flutter/material.dart';

class MobStatexFlut extends StatelessWidget {
  const MobStatexFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo MobStateX'),
        ),
        body: Center(
          child: Text('Cek Di Repository MobState x'),
        ));
  }
}
