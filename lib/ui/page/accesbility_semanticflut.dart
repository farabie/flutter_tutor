import 'package:flutter/material.dart';

class AccesbilitySemantic extends StatelessWidget {
  const AccesbilitySemantic({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(
            hidden: true,
            excludeSemantics: true,
            child: const Text('Accesbility Semantic')),
      ),
      floatingActionButton: FloatingActionButton(
          heroTag: "Plus_One",
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Semantics(
            onTapHint: "menambahkan bilangan dengan satu",
            child: const Icon(
              Icons.plus_one,
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Semantics(
              label:
                  "Ini adalah bilangan yang akan ditambahkan. Bilangan saat ini adalah.",
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
