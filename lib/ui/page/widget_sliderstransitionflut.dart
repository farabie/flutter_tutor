import 'package:flutter/material.dart';
import 'widget_sliders_with_transition/main_page.dart';

class WidgetSlidersTransitionFlut extends StatefulWidget {
  const WidgetSlidersTransitionFlut({Key? key}) : super(key: key);

  @override
  State<WidgetSlidersTransitionFlut> createState() =>
      _WidgetSlidersTransitionFlutState();
}

class _WidgetSlidersTransitionFlutState
    extends State<WidgetSlidersTransitionFlut> {
  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}
