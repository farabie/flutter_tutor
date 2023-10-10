import 'package:flutter/material.dart';

class ListViewFlut extends StatefulWidget {
  const ListViewFlut({Key? key}) : super(key: key);

  @override
  State<ListViewFlut> createState() => _ListViewFlutState();
}

class _ListViewFlutState extends State<ListViewFlut> {
  List<Widget> widgets = [];
  int counter = 0;

  // _ListViewFlutState() {
  //   for (var i = 0; i < 15; i++) {
  //     widgets.add(
  //       Text(
  //         'Data ke ' + i.toString(),
  //         style: TextStyle(fontSize: 35),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('List View Tutor'),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(
                          Text(
                            'Data Ke ' + counter.toString(),
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: "Poppins",
                            ),
                          ),
                        );
                        counter++;
                      });
                    },
                    child: Text('Tambah Data'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text('Kurang Data'),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          )),
    );
  }
}
