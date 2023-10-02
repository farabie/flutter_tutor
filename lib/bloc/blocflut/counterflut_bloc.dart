import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:flutter_tutor/bloc/blocflut/blocflut.dart';

class CounterflutBloc extends Bloc<CounterflutEvent, CounterflutState> {
  CounterflutBloc(CounterflutState initialState) : super(CounterflutState(0));

  @override
  Stream<CounterflutState> mapEventToState(CounterflutEvent event) async* {
    yield (event is Increment)
        ? CounterflutState(state.value + 1)
        : CounterflutState(state.value - 1);
  }
}
