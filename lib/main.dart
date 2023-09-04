import 'package:flutter/material.dart';
import 'package:flutter_tutor/animated_container.dart';
import 'package:flutter_tutor/anonymous_flutter.dart';
import 'package:flutter_tutor/container_flutter.dart';
import 'package:flutter_tutor/first_flutter.dart';
import 'package:flutter_tutor/flexible_widget.dart';
import 'package:flutter_tutor/list_listview_flutter.dart';
import 'package:flutter_tutor/row_column.dart';
import 'package:flutter_tutor/stack_flut.dart';
import 'package:flutter_tutor/stateless_statfull_flutter.dart';
import 'package:flutter_tutor/text_widget.dart';
import 'package:flutter_tutor/textstyle_flut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial Flutter Pemula'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstFlutter();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '01. Aplikasi Flutter Pertamaku',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TextWidget();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '02. Text Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RowColumnTutor();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '03. Row dan Column Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContainerLatihan();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '04. Container Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StaelessFull();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '05. Stateless & Stateful Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnonymousFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '06. Anonymous Method',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TextStyleFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '07. TextStyle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ListViewFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '08. List & ListView',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnimatedContainerFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '09. AnimatedContainer & Gesture Detector',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FlexibleFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '10. Flexible Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StackFlut();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '11. Stack & Align Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstFlutter();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      '12. Image Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
