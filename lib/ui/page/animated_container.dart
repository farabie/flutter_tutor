import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerFlut extends StatefulWidget {
  const AnimatedContainerFlut({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerFlut> createState() => _AnimatedContainerFlutState();
}

class _AnimatedContainerFlutState extends State<AnimatedContainerFlut> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Animated Container'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(
                seconds: 1,
              ),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
              color: Color.fromARGB(
                255,
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
