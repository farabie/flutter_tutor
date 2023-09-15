import 'package:flutter/material.dart';

class SelectToogleColorFiltered extends StatefulWidget {
  @override
  State<SelectToogleColorFiltered> createState() =>
      _SelectToogleColorFilteredState();
}

class _SelectToogleColorFilteredState extends State<SelectToogleColorFiltered> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter 1.9 Demo'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SelectableText(
                  'Ini selectable text silahkan pilih saya',
                  cursorColor: Colors.red,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  showCursor: true,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  height: 10,
                ),
                ToggleButtons(
                  children: <Widget>[
                    Icon(Icons.adb),
                    Icon(Icons.newspaper),
                    Icon(Icons.pause_circle)
                  ],
                  isSelected: isSelected,
                  fillColor: Colors.red[50],
                  onPressed: (index) {
                    setState(() {
                      if (index == 0)
                        ColorFilter.mode(Colors.blue, BlendMode.screen);
                      else if (index == 1)
                        ColorFilter.mode(Colors.green, BlendMode.softLight);
                      else
                        ColorFilter.mode(Colors.purple, BlendMode.multiply);
                      for (var i = 0; i < isSelected.length; i++) {
                        isSelected[i] = (i == index) ? true : false;
                      }
                    });
                  },
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
