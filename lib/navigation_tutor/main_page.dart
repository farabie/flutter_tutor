import 'package:flutter/material.dart';
import 'package:flutter_tutor/navigation_tutor/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              //Push replacement gunanya untuk mengganti screen, screen sebelumnya tidak dibuang
              return const SecondPage();
            }));
          },
          child: const Text('Go To Second Page'),
        ),
      ),
    );
  }
}
