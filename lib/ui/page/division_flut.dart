import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutor/style/custom_style.dart';
import 'package:flutter_tutor/ui/widget/custom_button.dart';

class DivisionFlut extends StatelessWidget {
  const DivisionFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Txt('Division Sample',
            style: CustomStyles.txtStyle.clone()
              ..fontSize(20)
              ..fontFamily('Pacifico')),
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              CustomStyles.buttonStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              CustomStyles.buttonStyle.clone()
                ..background.color(Colors.green[300]!)
                ..border(all: 3, color: Colors.green[300]!),
            ),
          ],
        ),
      ),
    );
  }
}
