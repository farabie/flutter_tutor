import 'package:flutter/material.dart';

class AppBarCustomHeight extends StatelessWidget {
  const AppBarCustomHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageAppBar(),
    );
  }
}

class MainPageAppBar extends StatelessWidget {
  const MainPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'Appbar With Custom Height',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
