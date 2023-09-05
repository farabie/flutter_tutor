import 'package:flutter/material.dart';

class CardFlut extends StatelessWidget {
  const CardFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.adb),
                    Text(
                      'Android Data',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
