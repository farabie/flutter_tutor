import 'package:flutter/material.dart';

class ContainerLatihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Container'),
        ),
        body: Container(
          color: Colors.red,
          //Margin merupakan jarak antara container ke widget lain
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          //Jarak antara widget didalam ke container
          padding: EdgeInsets.only(
            bottom: 20,
            top: 20,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), //Border Radius
              border:
                  Border.all(color: Colors.black), //Untuk menambahkan border
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.amber,
                  Colors.blueAccent,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
