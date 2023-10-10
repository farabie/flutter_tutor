import 'package:flutter/material.dart';

class TextWidgetFlut extends StatelessWidget {
  const TextWidgetFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Text Widget'),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 100,
            color: Colors.lightBlue,
            child: const Text(
              'Saya sedang melatih kemampuan flutter saya',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
              // maxLines: 2, -> Untuk Maxline
              // softWrap: true, -> Pembungkus
              // overflow: TextOverflow.ellipsis, -> Jika dia lebih dari maxline maka akan tampil ....
            ),
          ),
        ),
      ),
    );
  }
}
