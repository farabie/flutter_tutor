import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/bloc/blocflut/counterflut_bloc.dart';
import 'package:flutter_tutor/bloc/blocflut/counterflut_event.dart';
import 'package:flutter_tutor/bloc/blocflut/counterflut_state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterflutBloc cbloc = BlocProvider.of<CounterflutBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bloc V1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterflutBloc, CounterflutState>(
            builder: (context, conterState) => Text(
              conterState.value.toString(),
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                heroTag: "1",
                onPressed: () {
                  cbloc.add(Decrement());
                },
                child: const Icon(Icons.arrow_downward),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                heroTag: "2",
                onPressed: () {
                  cbloc.add(Increment());
                },
                child: const Icon(Icons.arrow_upward),
              )
            ],
          )
        ],
      ),
    );
  }
}
