import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/movie_box.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 0;

  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> listMovie = [
      "https://thesmartlocal.my/wp-content/uploads/2023/01/new-movies-in-2023-ant-man-and-the-wasp-quantumania.jpg",
      "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/01/24/2094595133.jpg",
      "https://lsf.go.id/wp-content/uploads/2022/08/one_piece_film_red_poster_page-0001.jpg",
      "https://hips.hearstapps.com/hmg-prod/images/best-teen-movies-2023-magic-flute-640755619b5a5.jpg",
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Movie Box Demo'),
        ),
        body: PageView.builder(
            controller: controller,
            itemCount: listMovie.length,
            itemBuilder: ((context, index) {
              double difference = index - currentPageValue;
              if (difference < 0) {
                difference *= -1;
              }
              difference = min(1, difference);
              return Center(
                child: MovieBox(
                  listMovie[index],
                  scale: 1 - (difference * 0.3),
                ),
              );
            })));
  }
}
