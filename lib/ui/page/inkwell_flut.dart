import 'package:flutter/material.dart';

class InkWellFlut extends StatefulWidget {
  const InkWellFlut({Key key}) : super(key: key);

  @override
  State<InkWellFlut> createState() => _InkWellFlutState();
}

class _InkWellFlutState extends State<InkWellFlut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Ink Well'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                ),
                onPressed: () {},
                child: Text('My Button'),
              ),
              Material(
                //Material diatas container supaya ada bayangan di bawahnya
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.amber,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Material(
                    ///Agar inkwell dapat memberikan splash maka inkwell harus dibawah material
                    //Jika ditaruh elevasi disini maka inkwell seperti ada bayangan di dalam containernya
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'My Button',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
