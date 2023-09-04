import 'package:flutter/material.dart';

class AnonymousFlut extends StatefulWidget {
  const AnonymousFlut({Key key}) : super(key: key);

  @override
  State<AnonymousFlut> createState() => _AnonymousFlutState();
}

class _AnonymousFlutState extends State<AnonymousFlut> {
  String message = 'Tombol Belum di Tekan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutor Anonymous'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                onPressed: () {
                  //Anonymous method artinya method yang tidak punya nama
                  //Method ini digunakan biasanya untuk fungsi yang hanya satu output saja
                  setState(() {
                    message = 'Tombol Sudah ditekan';
                  });
                },
                child: Text('Tekan Saya'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
