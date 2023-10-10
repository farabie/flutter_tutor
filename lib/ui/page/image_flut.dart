import 'package:flutter/material.dart';

class ImageFlut extends StatefulWidget {
  const ImageFlut({Key? key}) : super(key: key);

  @override
  State<ImageFlut> createState() => _ImageFlutState();
}

class _ImageFlutState extends State<ImageFlut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Image Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                //Untuk mengambil gambar dari internet
                child: Image.network(
                  'https://jogja.disway.id/upload/73074943dea10b010fffd766cdc66741.jpg',
                  //Untuk Mengepas Ukuran Image
                  fit: BoxFit.cover, //Cover itu dia fit nya maksa,
                  //Untuk Mengulang Image Yang Space nya masih ada
                  repeat: ImageRepeat.repeat,
                ),
              ),
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  'images/luffy.jpg',
                  fit: BoxFit.contain, //Contain default dari imagenya
                  repeat: ImageRepeat.repeat,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
