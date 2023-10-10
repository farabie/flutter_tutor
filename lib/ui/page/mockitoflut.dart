import 'package:flutter/material.dart';

class MockKitoFlut extends StatelessWidget {
  const MockKitoFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MockKitoFlut"),
        ),
        body: Center(
          child: Text(
            'Mock Kito Lihat Di Kelas warrior dan warrior_test',
          ),
        ),
      ),
    );
  }
}
