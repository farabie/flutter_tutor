import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutor/bloc/user_bloc.dart';
import 'package:flutter_tutor/ui/widget/user_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/user.dart';

class MvvmFlut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserBloc(
          User(),
        ),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Demo Arsitektur'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              bloc.add(r.nextInt(10) + 1);
            },
            child: Text(
              'Pick Random User',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BlocBuilder<UserBloc, User>(
            builder: (context, user) =>
                (user is UnintializedUser) ? Container() : UserCard(user),
          )
        ],
      ),
    );
  }
}
