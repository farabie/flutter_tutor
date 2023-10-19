import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Add) {
      yield state + event.amount;
    } else if (event is Substract) {
      yield state - event.amount;
    }
  }
}
