import 'package:flutter/material.dart';

class TextStyleFlut extends StatelessWidget {
  const TextStyleFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style Demo'),
        ),
        body: Center(
          child: Text(
            'Ini Adalah Text',
            style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.italic,
              fontSize: 24,
              decoration: TextDecoration.overline,
              decorationColor: Colors.blueAccent,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
