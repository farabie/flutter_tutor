import 'package:flutter/material.dart';

class ExtensionFlut extends StatelessWidget {
  const ExtensionFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Extension Demo'),
          ),
          body: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  final int number = 5;
  final List myList = [1, 2, 5, 7];

  MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Bilangan:" & myList.middleElement.toString(),
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}

extension NumberExtension<T extends num> on num {
  num negate() => this * -1;
}

extension ListExtension<T> on List {
  T get middleElement => (isEmpty) ? null : this[(length / 2).floor()];
}

extension StringExtension on String {
  String operator &(String other) => "$this $other";
}
