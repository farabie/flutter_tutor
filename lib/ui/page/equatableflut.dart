import 'package:flutter/material.dart';

class EquatableFlut extends StatelessWidget {
  const EquatableFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Equatable Demo'),
        ),
        body: Center(
          child: Text(
              'Untuk Equatable lihat di models/personal.dart, dan di test test/test_personal.dart'),
        ),
      ),
    );
  }
}
