import 'package:flutter/material.dart';
import 'package:flutter_tutor/model/get_result.model.dart';

class GetHttpFlut extends StatefulWidget {
  const GetHttpFlut({Key key}) : super(key: key);

  @override
  State<GetHttpFlut> createState() => _GetHttpFlutState();
}

class _GetHttpFlutState extends State<GetHttpFlut> {
  /// Jangan lupa set usernya itu sama dengan null dulu :)
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutor Get Data API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (user != null) ? user.id + " | " + user.name : "Tidak ada data",
              ),
              ElevatedButton(
                onPressed: () {
                  User.connectToApi("2").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text('Get Data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
