import 'package:flutter/material.dart';

class FirebaseAnonymous extends StatelessWidget {
  const FirebaseAnonymous({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firebase Authentication"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dibedkan repository karena untuk firebas harus inisialisasi dulu di widget binddingnya",
              ),
              Text(
                  "Untuk Materi ini cek repository dengan nama firebase_anonymousflut"),
            ],
          ),
        ),
      ),
    );
  }
}
