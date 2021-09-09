import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterIncrementsEvent extends CounterEvent {}

class CounterDecrementsEvent extends CounterEvent {}

class CounterStopEvent extends CounterEvent {}
