import 'package:flutter/material.dart';

class RowColumnTutor extends StatelessWidget {
  const RowColumnTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Row dan Column'),
        ),
        body: Column(
          //MainAxisAlignment yang column itu mengatur tataletak kolom secara vertikal
          //CrossAxisAlignment mengatur tataletak secara horizontal
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Text 1'),
            const Text('Text 2'),
            const Text('Text 3'),
            const Row(
              //MainAxisAlignment yang column itu mengatur tataletak kolom secara horizontal
              //CrossAxisAlignment mengatur tataletak secara vertikal
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Text 4'),
                Text('Text 5'),
                Text('Text 6'),
              ],
            ),
            const Center(
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
