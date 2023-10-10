import 'package:flutter/material.dart';

class UnitTestingFlut extends StatelessWidget {
  const UnitTestingFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Silahkan Cek Folder Model dengan class Person'),
        ),
      ),
    );
  }
}
