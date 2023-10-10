import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeFlut extends StatelessWidget {
  const QrCodeFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial QR Code FLut'),
        ),
        body: Center(
          child: QrImageView(
            data: 'https://www.linkedin.com/in/muhammad-farabie-863501246/',
            version: 6,
            backgroundColor: Colors.transparent,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(20),
            size: 300,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
          ),
        ),
      ),
    );
  }
}
