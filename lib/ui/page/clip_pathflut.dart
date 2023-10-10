import 'package:flutter/material.dart';

class ClipPathFlut extends StatelessWidget {
  const ClipPathFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clip Path Tutor'),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://c4.wallpaperflare.com/wallpaper/667/427/765/one-piece-boa-hancock-monkey-d-luffy-1200x964-anime-one-piece-hd-art-wallpaper-preview.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //Buat garis dari 0 kebawah
    path.lineTo(0, size.height);

    //Quadratic(x1, y1, x2, y2)
    //x1, y1 -> Untuk Gelombang atau clipnya
    //x2, y2 -> untuk tujuan akhirnya
    //Untuk buat melengkung yang dibawah
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    //Untuk yang dari bawah ke atas
    path.lineTo(size.width, 0);
    //Untuk yang atas / tutup
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
