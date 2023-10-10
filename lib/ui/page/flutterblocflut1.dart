import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/bloc/blocflut/counterflut_bloc.dart';
import 'package:flutter_tutor/bloc/blocflut/counterflut_state.dart';
import 'package:flutter_tutor/ui/page/flutter_blocv1/main_page.dart';

class FlutterBlocV1 extends StatelessWidget {
  const FlutterBlocV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterflutBloc>(
        create: (context) => CounterflutBloc(CounterflutState(0)),
        child: MainPage(),
      ),
    );
  }
}
