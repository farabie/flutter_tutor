import 'package:flutter/material.dart';
import 'package:flutter_tutor/model/color_bloc.dart';

class BlocStreamFlut extends StatefulWidget {
  const BlocStreamFlut({Key? key}) : super(key: key);

  @override
  State<BlocStreamFlut> createState() => _BlocStreamFlutState();
}

class _BlocStreamFlutState extends State<BlocStreamFlut> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "ab",
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_ember);
              },
              backgroundColor: Colors.amber,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: "lb",
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
        appBar: AppBar(
          title: const Text('Bloc Tanpa Library'),
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: const Duration(
                  milliseconds: 500,
                ),
                width: 100,
                height: 100,
                color: snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
