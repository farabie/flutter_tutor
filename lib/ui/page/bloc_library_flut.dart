import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/model/color_library_bloc.dart';

class BlocLibraryFLut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorLibraryBloc>(
        create: (context) => ColorLibraryBloc(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorLibraryBloc bloc = BlocProvider.of<ColorLibraryBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "am",
            onPressed: () {
              ///Untuk flutter bloc yang versi 6.0.0 itu dispatch diganti add
              bloc.add(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "lb",
            onPressed: () {
              bloc.add(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
      appBar: AppBar(
        title: Text('Bloc Dengan Library'),
      ),
      body: Center(
        child: BlocBuilder<ColorLibraryBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: currentColor,
            duration: Duration(
              milliseconds: 500,
            ),
          ),
        ),
      ),
    );
  }
}
