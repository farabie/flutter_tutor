import 'package:flutter/material.dart';

class SimulasiHtttpFlut extends StatelessWidget {
  const SimulasiHtttpFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simulasi HTTP"),
        ),
        body: Center(
          child: Text(
            "Silahkan Cek Kelas Person services, dan kelas test services untuk bagian ini",
          ),
        ),
      ),
    );
  }
}
