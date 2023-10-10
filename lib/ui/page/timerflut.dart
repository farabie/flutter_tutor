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
          title: const Text('Tutorial Timer'),
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer(const Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: const Text('Ubah Warna 5 detik Kemudian'),
              ),
              const SizedBox(
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
                child: const Text('Ubah Warna Secara Langsung'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  isStop = false;
                  Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: const Text('Start Timer'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isStop = true;
                  });
                },
                child: const Text('Stop Timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
