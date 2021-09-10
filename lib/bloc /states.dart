import 'package:equatable/equatable.dart';

abstract class CounterStates extends Equatable {}

class CounterInitial extends CounterStates {
 final  int? initial;
  CounterInitial({this.initial});
  @override
  // TODO: implement props
  List<Object?> get props => [initial];
}

class CounterIncrementState extends CounterStates {
 final  int? counter;
  CounterIncrementState({this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class CounterDecrementState extends CounterStates {
  final int? counter;
  CounterDecrementState({this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class CounterStopState extends CounterStates {
  final int? counter;
  CounterStopState({this.counter});
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
