import 'package:flutter/material.dart';
import 'package:flutter_tutor/model/user_profile.dart';

class DocFlut extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: 'Tony Chopper',
    role: 'Ship Doctor',
    photoURL:
        'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/04/13/WhatsApp-Image-2023-04-13-at-223756-595896834.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Document Tutorial'),
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}
