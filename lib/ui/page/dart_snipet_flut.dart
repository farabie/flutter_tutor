import 'package:flutter/material.dart';

class DartSnippetFlut extends StatelessWidget {
  const DartSnippetFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo DartSnippet'),
      ),
      body: const Center(
        child: Text('Ini adalah Contoh Dart Snippet Custom'),
      ),
    );
  }
}

///Ini merupakan contoh penerapan dari custom dart snippet
class Person {
  late String _adress;

  void setAdress(String value) {
    _adress = value;
  }

  String getAdress() => _adress;
}
