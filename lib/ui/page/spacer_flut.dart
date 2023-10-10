import 'package:flutter/material.dart';

class SpacerFlut extends StatelessWidget {
  const SpacerFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Spacer'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
