import 'package:flutter/material.dart';

class MediaQueryFlut extends StatelessWidget {
  const MediaQueryFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Media Query'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer(),
              )
            : Row(
                children: generateContainer(),
              ),
      ),
    );
  }
}

List<Widget> generateContainer() {
  return <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  ];
}
