import 'package:flutter/material.dart';

class ContainerLatihan extends StatelessWidget {
  const ContainerLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Container'),
        ),
        body: Container(
          color: Colors.red,
          //Margin merupakan jarak antara container ke widget lain
          margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
          //Jarak antara widget didalam ke container
          padding: const EdgeInsets.only(
            bottom: 20,
            top: 20,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), //Border Radius
              border:
                  Border.all(color: Colors.black), //Untuk menambahkan border
              gradient: const LinearGradient(
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
