import 'package:equatable/equatable.dart';

abstract class CounterStates extends Equatable {}

class CounterInitial extends CounterStates {
  int? initial;
  CounterInitial({this.initial});
  @override
  // TODO: implement props
  List<Object?> get props => [initial];
}

class CounterIncrementState extends CounterStates {
  int? counter;
  CounterIncrementState({this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class CounterDecrementState extends CounterStates {
  int? counter;
  CounterDecrementState({this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class CounterStopState extends CounterStates {
  int? counter;
  CounterStopState({this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
