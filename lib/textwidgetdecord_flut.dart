import 'package:flutter/material.dart';

class TextWidgetDecFlut extends StatefulWidget {
  const TextWidgetDecFlut({Key key}) : super(key: key);

  @override
  State<TextWidgetDecFlut> createState() => _TextWidgetDecFlutState();
}

class _TextWidgetDecFlutState extends State<TextWidgetDecFlut> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Text Widget Decord'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Inpukan Nama Anda'),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    /**
                     * Jika ada suffix maka tidak boleh isi suffix icon atau suffix style
                     * Jika ada preffix maka tidak boleh isi prefix icon atau prefix style
                     */
                    suffix: Container(
                      //Suffix letaknya di ujung
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    icon: Icon(Icons.adb),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 24,
                    ), //Prefix letaknya didepan
                    prefixText: 'Name: ',
                    prefixStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                    //Label letaknya diatas dari text widget
                    labelText: 'Isi Nama anda:',
                    labelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                    hintText:
                        'Isikan nama anda disini', //hint berfungsi untuk memberitahu apa yang akan diisi
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {
                  setState(() {});
                },
                // obscureText: true, -> Untuk menyembunyikan inputan
                // maxLength: 2,  Panjang Maksimal inputan dalam bentuk length
                // maxLines: 2, Panjang baris yang dapat di input
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
