import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SwitchDayNight extends StatefulWidget {
  const SwitchDayNight({Key key}) : super(key: key);

  @override
  State<SwitchDayNight> createState() => _SwitchDayNightState();
}

class _SwitchDayNightState extends State<SwitchDayNight> {
  //0 -> Night
  //1 -> Night -> Day (Transisi)
  //2 -> Day
  //3 -> Day -> Night (Transisi)
  int state = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: GestureDetector(
        onTap: () {
          if (state == 0) {
            setState(() {
              //Transisi dari night ke day
              state = 1;
            });
          } else if (state == 2) {
            setState(() {
              //Transisi dari day ke night
              state = 3;
            });
          }
        },
        child: FlareActor(
          "assets/switch_daytime.flr",
          animation: (state == 0)
              ? "night_idle"
              : (state == 1)
                  ? "switch_day"
                  : (state == 2)
                      ? "day_idle"
                      : "switch_night",
          //Untuk feed backnya
          callback: (animationName) {
            if (animationName == "switch_day") {
              setState(() {
                state = 2;
              });
            } else if (animationName == "switch_night") {
              setState(() {
                state = 0;
              });
            }
          },
        ),
      ),
    );
  }
}
