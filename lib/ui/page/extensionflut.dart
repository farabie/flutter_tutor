import 'package:flutter/material.dart';

class ExtensionFlut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Extension Demo'),
          ),
          body: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  final int number = 5;
  final List myList = [1, 2, 5, 7];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Bilangan:" & myList.middleElement.toString(),
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

extension NumberExtension<T extends num> on num {
  T negate() => this * -1;
}

extension ListExtension<T> on List {
  T get middleElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension StringExtension on String {
  String operator &(String other) => this + " " + other;
}
