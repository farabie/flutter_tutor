import 'package:flutter/material.dart';

class DartSnippetFlut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo DartSnippet'),
      ),
      body: Center(
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
