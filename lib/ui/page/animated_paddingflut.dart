import 'package:flutter/material.dart';

class AnimatedPaddingFlut extends StatefulWidget {
  const AnimatedPaddingFlut({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingFlut> createState() => _AnimatedPaddingFlutState();
}

class _AnimatedPaddingFlutState extends State<AnimatedPaddingFlut> {
  double myPaddingg = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Animated Padding'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: const Duration(seconds: 1),
                      padding: EdgeInsets.all(myPaddingg),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: const Duration(seconds: 1),
                      padding: EdgeInsets.all(myPaddingg),
                      child: Container(
                        color: Colors.green,
                      ),
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
                    child: AnimatedPadding(
                      duration: const Duration(seconds: 1),
                      padding: EdgeInsets.all(myPaddingg),
                      child: GestureDetector(
                        onTap: () {
                          ///Set state ini akan merubah satu layar
                          setState(() {
                            myPaddingg = 20;
                          });
                        },
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: const Duration(seconds: 1),
                      padding: EdgeInsets.all(myPaddingg),
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
