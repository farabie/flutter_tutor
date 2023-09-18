import 'dart:ui';

import 'package:flutter/material.dart';

class FontFeaturesFlut extends StatelessWidget {
  const FontFeaturesFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Font Features,'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Contoh 01 (Tanpa Apapun)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Contoh 02 (Small Caps)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                ],
              ),
            ),
            Text(
              'Contoh 1/2 (Small Caps & Frac)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac'),
                ],
              ),
            ),
            Text(
              'Contoh Cardo 19 (Tanpa Apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Cardo",
              ),
            ),
            Text(
              'Contoh Cardo 19 (Old Style)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Cardo",
                fontFeatures: [
                  FontFeature.oldstyleFigures(),
                ],
              ),
            ),
            Text(
              'Contoh Gabriola(Default)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Gabriola",
              ),
            ),
            Text(
              'Contoh Gabriola (Set 5)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Gabriola",
                fontFeatures: [
                  FontFeature.stylisticSet(5),
                ],
              ),
            ),
            Text(
              'Contoh 3 1/2 (Default)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac'),
                ],
              ),
            ),
            Text(
              'Contoh Milonga 3 1/2',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Milonga",
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
