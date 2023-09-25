import 'package:meta/meta.dart';

@immutable
abstract class CounterflutEvent {}

class Decrement extends CounterflutEvent {}

class Increment extends CounterflutEvent {}
