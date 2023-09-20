import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/bloc/color_bloc.dart';
import 'package:flutter_tutor/bloc/counter_bloc.dart';
import 'package:flutter_tutor/ui/page/multibloc_multipage/main_page.dart';

class MultiBlocMultiPageFlut extends StatelessWidget {
  const MultiBlocMultiPageFlut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(Colors.pink),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(0),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
