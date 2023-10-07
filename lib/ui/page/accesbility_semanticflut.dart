import 'package:flutter/material.dart';

class AccesbilitySemantic extends StatelessWidget {
  const AccesbilitySemantic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(
            hidden: true,
            excludeSemantics: true,
            child: Text('Accesbility Semantic')),
      ),
      floatingActionButton: FloatingActionButton(
          heroTag: "Plus_One",
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Semantics(
            onTapHint: "menambahkan bilangan dengan satu",
            child: Icon(
              Icons.plus_one,
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Semantics(
              label:
                  "Ini adalah bilangan yang akan ditambahkan. Bilangan saat ini adalah.",
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
