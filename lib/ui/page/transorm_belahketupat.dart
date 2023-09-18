import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/colorful_button.dart';

class TransformFlut extends StatefulWidget {
  const TransformFlut({Key key}) : super(key: key);

  @override
  State<TransformFlut> createState() => _TransformFlutState();
}

class _TransformFlutState extends State<TransformFlut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Transform'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.amber, Colors.red, Icons.comment),
              ColorfulButton(Colors.green, Colors.purple, Icons.computer),
              ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone),
            ],
          ),
        ),
      ),
    );
  }
}
