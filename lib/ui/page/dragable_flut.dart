import 'package:flutter/material.dart';

class DragableFlut extends StatefulWidget {
  const DragableFlut({Key? key}) : super(key: key);

  @override
  State<DragableFlut> createState() => _DragableFlutState();
}

class _DragableFlutState extends State<DragableFlut> {
  Color color1 = Colors.red;
  Color color2 = Colors.yellow;
  late Color targetColor;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Tutor Dragable'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    childWhenDragging: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.2),
                        shape: const StadiumBorder(),
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color2,
                    childWhenDragging: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.2),
                        shape: const StadiumBorder(),
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  )
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: ((context, candidateData, rejectedData) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                          ),
                        )
                      : const SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          ),
                        );
                }),
              )
            ],
          )),
    );
  }
}
