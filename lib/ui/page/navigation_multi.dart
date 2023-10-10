import 'package:flutter/material.dart';
import 'package:flutter_tutor/navigation_tutor/login_page.dart';

class NavigationMultFlut extends StatefulWidget {
  const NavigationMultFlut({Key? key}) : super(key: key);

  @override
  State<NavigationMultFlut> createState() => _NavigationMultFlutState();
}

class _NavigationMultFlutState extends State<NavigationMultFlut> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
