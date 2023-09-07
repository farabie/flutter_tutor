import 'package:flutter/material.dart';

class GradientOpacityFlut extends StatelessWidget {
  const GradientOpacityFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Gradient Opacity'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                //Untuk gunakan shader mask pastikan di linear gradientnya itu harus ada transparent
                colors: [Colors.pink, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                Rect.fromLTRB(
                  0,
                  0,
                  rectangle.width,
                  rectangle.height,
                ),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage(
                  'https://images.wallpapersden.com/image/download/boa-hancock-and-monkey-luffy-art-one-piece-4k_bWdpaWuUmZqaraWkpJRobWllrWdma2U.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
