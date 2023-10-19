import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsFlut extends StatelessWidget {
  const GoogleFontsFlut({super.key});

  //Agar bisa digunakan google fontsnya secara online
  //Maka download dulu fontsnya kemudian fontnya
  //Dimasukan folder google_fonts sebagai assetnya
  @override
  Widget build(BuildContext context) {
    Color fontColor = const Color(0xffb401);
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.milongaTextTheme().copyWith(
          bodyLarge: GoogleFonts.poppins(),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff1e252d),
        appBar: AppBar(
          backgroundColor: const Color(0xff282f37),
          title: const Text(
            "Demo Google Fonts",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I'll be keep learning flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                "Fighting",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 24,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
