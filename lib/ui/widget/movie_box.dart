import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutor/style/page_styles.dart';

class MovieBox extends StatelessWidget {
  final String urls;

  MovieBox(this.urls);
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: PageStyles.styles.clone()
        ..background.image(url: urls, fit: BoxFit.cover),
    );
  }
}
