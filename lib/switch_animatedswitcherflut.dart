import 'package:flutter/material.dart';

class SwitchFlut extends StatefulWidget {
  const SwitchFlut({Key key}) : super(key: key);

  @override
  State<SwitchFlut> createState() => _SwitchFlutState();
}

class _SwitchFlutState extends State<SwitchFlut> {
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(width: 4),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial Switch Animated Swithcer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isOn,
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {
                    if (isOn) {
                      myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(width: 4),
                        ),
                      );
                      // myWidget = SizedBox(
                      //   width: 200,
                      //   height: 100,
                      //   child: Center(
                      //     child: Text(
                      //       'Switch: On',
                      //       style: TextStyle(
                      //         color: Colors.green,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //   ),
                      // );
                    } else {
                      Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(width: 4),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
