import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/bloc/color_bloc.dart';
import 'package:flutter_tutor/bloc/counter_bloc.dart';
import 'package:flutter_tutor/ui/widget/draft_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftWidget(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: (() {
                    counterBloc.add(number + 1);
                  }),
                  child: Text(
                    number.toString(),
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPink);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: (color == Colors.pink)
                          ? const CircleBorder(
                              side: BorderSide(
                              color: Colors.black,
                              width: 3,
                            ))
                          : const CircleBorder(),
                      backgroundColor: Colors.pink,
                    ),
                    child: null,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: (color == Colors.amber)
                          ? const CircleBorder(
                              side: BorderSide(
                              color: Colors.black,
                              width: 3,
                            ))
                          : const CircleBorder(),
                      backgroundColor: Colors.amber,
                    ),
                    child: null,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPurple);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: (color == Colors.purple)
                          ? const CircleBorder(
                              side: BorderSide(
                                color: Colors.black,
                                width: 3,
                              ),
                            )
                          : const CircleBorder(),
                      backgroundColor: Colors.purple,
                    ),
                    child: null,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
