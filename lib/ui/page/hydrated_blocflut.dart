import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/model/color_library_bloc.dart';

///Skip HydratedBloc Karena Tidak Terlalu Paham dan Terlalu Rumit
class HydratedBlocFlut extends StatelessWidget {
  const HydratedBlocFlut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorLibraryBloc>(
        create: (context) => ColorLibraryBloc(),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          const SizedBox(
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
        title: const Text('Bloc Dengan Library'),
      ),
      body: Center(
        child: BlocBuilder<ColorLibraryBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: currentColor,
            duration: const Duration(
              milliseconds: 500,
            ),
          ),
        ),
      ),
    );
  }
}
