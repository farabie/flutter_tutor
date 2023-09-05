import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(
                context); //Menaikan screen saja tapi tidak dibuang/mengangkat
          },
          child: Text('Go To Main Page'),
        ),
      ),
    );
  }
}
