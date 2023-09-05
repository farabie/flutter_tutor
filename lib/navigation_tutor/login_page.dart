import 'package:flutter/material.dart';
import 'package:flutter_tutor/navigation_tutor/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Login Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //Navigator jadi sebagai managernya kemudian route menggunakan material page route
              Navigator.pushReplacement(
                  context, //Push replacement gunanya untuk mengganti screen, tapi screen sebelumnya dibuang
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            child: Text('Login To Main Page'),
          ),
        ),
      ),
    );
  }
}
