import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlocTestingFlutBag1 extends StatelessWidget {
  const BlocTestingFlutBag1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bloc Testing Bag1"),
        ),
        body: Center(
          child: Text(
            "Bloc Tet Bagian 1 Lihat di bagian folder test",
          ),
        ),
      ),
    );
  }
}
