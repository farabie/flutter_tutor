import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/widget/progress_custom.dart';
import 'package:provider/provider.dart';
import 'dart:async';

class CustomProgress extends StatelessWidget {
  const CustomProgress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Custom Progress Bar(Timer + Provider)'),
          ),
          body: MultiProvider(
            providers: [
              ChangeNotifierProvider<TimeStateForward>(
                  create: (context) => TimeStateForward()),
              ChangeNotifierProvider<TimeStateBackward>(
                  create: (context) => TimeStateBackward()),
            ],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Consumer<TimeStateBackward>(
                    builder: (context, timeStateBackward, _) => ProgressCustom(
                      width: 200,
                      value: timeStateBackward.time,
                      totalValue: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Consumer<TimeStateBackward>(
                    builder: (context, timeStateBackward, _) => ElevatedButton(
                      onPressed: () {
                        Timer.periodic(
                            Duration(
                              seconds: 1,
                            ), (timer) {
                          if (timeStateBackward.time == 0)
                            timer.cancel();
                          else
                            timeStateBackward.time -= 1;
                        });
                      },
                      child: Text(
                        'Start Backward',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Consumer<TimeStateForward>(
                    builder: (context, timeStateForward, _) => ProgressCustom(
                      width: 200,
                      value: timeStateForward.time,
                      totalValue: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Consumer<TimeStateForward>(
                    builder: (context, timeStateForward, _) => ElevatedButton(
                      onPressed: () {
                        Timer.periodic(
                            Duration(
                              seconds: 1,
                            ), (timer) {
                          if (timeStateForward.time == 15)
                            timer.cancel();
                          else
                            timeStateForward.time += 1;
                        });
                      },
                      child: Text(
                        'Start Forward',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class TimeStateForward extends ChangeNotifier {
  int _time = 0;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}

class TimeStateBackward extends ChangeNotifier {
  int _time = 15;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
