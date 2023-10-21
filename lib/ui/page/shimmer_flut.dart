import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFlut extends StatelessWidget {
  const ShimmerFlut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shimmer Effect Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://c4.wallpaperflare.com/wallpaper/332/915/762/one-piece-roronoa-zoro-hd-wallpaper-preview.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Shimmer(
                    gradient: LinearGradient(
                        begin: Alignment(-1, 0.25),
                        end: Alignment(1, 0.25),
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0),
                        ],
                        stops: [
                          0.45,
                          0.5,
                          0.55
                        ]),
                    child: Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Shimmer(
                gradient: LinearGradient(
                    begin: Alignment(-1, 0.25),
                    end: Alignment(1, 0.25),
                    colors: [
                      Colors.black,
                      Colors.white,
                      Colors.black,
                    ],
                    stops: [
                      0.45,
                      0.5,
                      0.55
                    ]),
                direction: ShimmerDirection.rtl,
                loop: 2,
                period: Duration(seconds: 5),
                child: Text(
                  "Roronoa Zoro",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
