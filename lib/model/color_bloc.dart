import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { to_ember, to_light_blue }

class ColorBloc {
  //Buat Untuk nyimpan colornya terlebih dahulu
  Color _color = Colors.amber;

  //Buat untuk menyimpan stream controller Color event
  final StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  //Buat Sink/Inputan dari color event
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  //Buat untuk menyimpan stream controller Color state
  final StreamController<Color> _stateController = StreamController<Color>();
  //Buat Sink/Inputan dari state color
  StreamSink<Color> get _stateSink => _stateController.sink;
  //Buat Stream atau outputnya untuk dialirkan keluar
  //Dia tidak private karena akan dialirkan keluar
  Stream<Color> get stateStream => _stateController.stream;

  //Buat Map to event state
  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_ember) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }
    //Untuk menghubungkan dari state sink ke mapevent to state
    _stateSink.add(_color);
  }

  //Buat Stream untuk menghubungkan dari event ke Map Event To State
  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
