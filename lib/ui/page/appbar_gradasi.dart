import 'package:flutter/material.dart';

class AppBarGradasiFlut extends StatelessWidget {
  const AppBarGradasiFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb),
          title: Text(
            'AppBar Example',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0096ff),
                  Color(0xff6610f2),
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.topRight,
              ),
              image: DecorationImage(
                image: AssetImage(
                  'images/pattern1.png',
                ),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
                opacity: 0.2,
              ),
            ),
          ),
        ),
        body: Center(
          child: Text('AppBar Gradasi Tutorial'),
        ),
      ),
    );
  }
}
