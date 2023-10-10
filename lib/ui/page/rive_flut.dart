import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/switch_day_night.dart';

class RiveFlut extends StatelessWidget {
  const RiveFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Rive + Flutter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: SwitchDayNight(),
        ),
      ),
    );
  }
}
