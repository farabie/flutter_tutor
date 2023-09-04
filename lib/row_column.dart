import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowColumnTutor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Row dan Column'),
        ),
        body: Column(
          //MainAxisAlignment yang column itu mengatur tataletak kolom secara vertikal
          //CrossAxisAlignment mengatur tataletak secara horizontal
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Text 1'),
            Text('Text 2'),
            Text('Text 3'),
            Row(
              //MainAxisAlignment yang column itu mengatur tataletak kolom secara horizontal
              //CrossAxisAlignment mengatur tataletak secara vertikal
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Text 4'),
                Text('Text 5'),
                Text('Text 6'),
              ],
            ),
            Center(
              child: Text('Contoh Penerapan Row dan Column'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(top: 10),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(left: 10, top: 10),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(top: 10),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(left: 10, top: 10),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(top: 10),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.only(left: 10, top: 10),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
