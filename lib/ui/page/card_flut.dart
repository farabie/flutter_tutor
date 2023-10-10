import 'package:flutter/material.dart';

class CardFlut extends StatelessWidget {
  const CardFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.adb, 'Account Box'),
              buildCard(Icons.get_app, 'Get App'),
              buildCard(Icons.exit_to_app, 'Exit'),
              buildCard(Icons.settings, 'Setting'),
              buildCard(Icons.search, 'Searching'),
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(IconData iconData, String text) {
  return Card(
    child: Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Icon(iconData),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
          )
        ],
      ),
    ),
  );
}
