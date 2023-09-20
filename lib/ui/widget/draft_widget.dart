import 'package:flutter/material.dart';

class DraftWidget extends StatelessWidget {
  Color backgroundColor;
  Widget body;

  DraftWidget({this.backgroundColor, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Demo MultiBloc Multi Page'),
      ),
      body: body,
    );
  }
}
