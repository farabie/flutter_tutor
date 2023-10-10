import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(
                context); //Menaikan screen saja tapi tidak dibuang/mengangkat
          },
          child: const Text('Go To Main Page'),
        ),
      ),
    );
  }
}
