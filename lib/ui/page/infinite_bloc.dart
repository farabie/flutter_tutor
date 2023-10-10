import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/bloc/post_bloc.dart';

import 'infinite_blocflut/main_page.dart';

class InifiniteBloc extends StatelessWidget {
  const InifiniteBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
          create: (context) => PostBloc(PostUnitialized())..add(PostEvent()),
          child: MainPage()),
    );
  }
}
