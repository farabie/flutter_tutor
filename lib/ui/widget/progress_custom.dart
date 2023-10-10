import 'package:flutter/material.dart';

class ProgressCustom extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  ProgressCustom({this.width = 0, this.value = 0, this.totalValue = 0});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.alarm,
          color: Colors.grey[700],
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                height: 10,
                width: width * ratio,
                duration: Duration(
                  milliseconds: 500,
                ),
                decoration: BoxDecoration(
                    color: (ratio < 0.1)
                        ? Colors.red
                        : (ratio < 0.6)
                            ? Colors.amber[400]
                            : Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
