import 'package:flutter/material.dart';

class StackFlut extends StatefulWidget {
  const StackFlut({Key? key}) : super(key: key);

  @override
  State<StackFlut> createState() => _StackFlutState();
}

class _StackFlutState extends State<StackFlut> {
  List<Widget> widgets = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Stack'),
        ),
        body: Stack(
          children: <Widget>[
            //Background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Stack tengah listview
            ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                )
              ],
            ),

            //Button Stack ke 3 (terakhir)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Align(
                  alignment: Alignment(0.9, 0.9),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(
                          Text(
                            'Ini adalah stack tengah ke ' + counter.toString(),
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        );
                        counter++;
                      });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.9, 0.9),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
