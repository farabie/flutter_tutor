import 'package:flutter/material.dart';

class FirstFlutter extends StatelessWidget {
  const FirstFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter'),
        ),
        body: const Center(
          child: Text(
            'Hello World',
          ),
        ),
      ),
    );
  }
}
