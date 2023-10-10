import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/page/widget_sliders/main_page.dart';

class WidgetSlidersFlut extends StatelessWidget {
  const WidgetSlidersFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
