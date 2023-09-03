import 'package:flutter/material.dart';

class FirstFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello World',
          ),
        ),
      ),
    );
  }
}
