import 'package:flutter/material.dart';

class TextFieldFlut extends StatefulWidget {
  const TextFieldFlut({Key key}) : super(key: key);

  @override
  State<TextFieldFlut> createState() => _TextFieldFlutState();
}

class _TextFieldFlutState extends State<TextFieldFlut> {
  TextEditingController controller = TextEditingController(text: 'Nilai Awal');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Textfield Widget'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Inpukan Nama Anda'),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  // obscureText: true, -> Untuk menyembunyikan inputan
                  // maxLength: 2,  Panjang Maksimal inputan dalam bentuk length
                  // maxLines: 2, Panjang baris yang dapat di input
                  controller: controller,
                ),
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
