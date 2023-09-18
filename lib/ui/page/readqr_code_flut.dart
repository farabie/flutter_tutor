import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;

class ReadQrCodeFLut extends StatefulWidget {
  const ReadQrCodeFLut({Key key}) : super(key: key);

  @override
  State<ReadQrCodeFLut> createState() => _ReadQrCodeFLutState();
}

class _ReadQrCodeFLutState extends State<ReadQrCodeFLut> {
  String text = "Hasil QR Scan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Read QR Code Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Scan'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
