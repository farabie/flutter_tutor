import 'package:flutter/material.dart';
import 'package:flutter_tutor/model/get_listresult_model.dart';

class GetListApiFlut extends StatefulWidget {
  const GetListApiFlut({Key? key}) : super(key: key);

  @override
  State<GetListApiFlut> createState() => _GetListApiFlutState();
}

class _GetListApiFlutState extends State<GetListApiFlut> {
  String output = "No Data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Get List API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              ElevatedButton(
                onPressed: () {
                  User.getUsers('2').then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++)
                      output = output +
                          ' [ ' +
                          users[i].name +
                          '|' +
                          users[i].email +
                          ' ] ';
                    setState(() {});
                  });
                },
                child: Text('Get List'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
