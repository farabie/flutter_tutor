import 'dart:async';

import 'package:flutter/material.dart';

class TimerFlut extends StatefulWidget {
  const TimerFlut({Key? key}) : super(key: key);

  @override
  State<TimerFlut> createState() => _TimerFlutState();
}

class _TimerFlutState extends State<TimerFlut> {
  bool isStop = true;
  int counter = 0;
  bool isBlack = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Timer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: (isBlack) ? Colors.black : Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Ubah Warna 5 detik Kemudian'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Ubah Warna Secara Langsung'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  isStop = false;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: Text('Start Timer'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isStop = true;
                  });
                },
                child: Text('Stop Timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
