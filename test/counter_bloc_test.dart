import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_tutor/bloc/counterbloctest/bloc/counter_bloc.dart';

void main() {
  group("Testing Counter Bloc", () {
    blocTest(
      "Inisialisasi Counter Bloc",
      build: () => CounterBloc(0),
      expect: () => const <int>[0],
      wait: const Duration(seconds: 60),
    );
  });
}
