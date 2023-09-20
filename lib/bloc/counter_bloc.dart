import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<int, int> {
  CounterBloc(int initialState) : super(0);

  @override
  Stream<int> mapEventToState(int number) async* {
    yield number;
  }
}
