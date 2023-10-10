import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_light_blue }

class ColorLibraryBloc extends Bloc<ColorEvent, Color> {
  //Untuk nyimpan current color
  Color get initialState => Colors.amber;

  ColorLibraryBloc() : super(Colors.amber);

  ///Untuk color Event dan state itu sudah diakomodir semua di flutter bloc ini
  @override
  //map event to state
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
  }
}
