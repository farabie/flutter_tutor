import 'package:flutter/material.dart';
import 'package:flutter_tutor/navigation_tutor/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Login Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //Navigator jadi sebagai managernya kemudian route menggunakan material page route
              Navigator.pushReplacement(
                  context, //Push replacement gunanya untuk mengganti screen, tapi screen sebelumnya dibuang
                  MaterialPageRoute(builder: (context) {
                return const MainPage();
              }));
            },
            child: const Text('Login To Main Page'),
          ),
        ),
      ),
    );
  }
}
