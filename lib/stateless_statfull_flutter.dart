import 'package:flutter/material.dart';

class StaelessFull extends StatefulWidget {
  const StaelessFull({Key key}) : super(key: key);

  @override
  State<StaelessFull> createState() => _StaelessFullState();
}

class _StaelessFullState extends State<StaelessFull> {
  int number = 0;

  void nambahAngka() {
    setState(() {
      number = number + 1;
    });
  }

  void kurangAngka() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 10 + number.toDouble(),
                ),
              ),
              ElevatedButton(
                onPressed: nambahAngka,
                child: const Text('Tambah Angka'),
              ),
              ElevatedButton(
                onPressed: kurangAngka,
                child: const Text('Kurang Angka'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
