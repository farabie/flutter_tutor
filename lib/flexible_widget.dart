import 'package:flutter/material.dart';

class FlexibleFlut extends StatefulWidget {
  const FlexibleFlut({Key key}) : super(key: key);

  @override
  State<FlexibleFlut> createState() => _FlexibleFlutState();
}

class _FlexibleFlutState extends State<FlexibleFlut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Flexible Widget'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      margin: const EdgeInsets.all(5),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.cyan,
                      margin: const EdgeInsets.all(5),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.brown,
                      margin: const EdgeInsets.all(5),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                margin: const EdgeInsets.all(5),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.green,
                margin: const EdgeInsets.all(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
