import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocinfinity/bloc%20/event.dart';
import 'package:flutterblocinfinity/bloc%20/states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc(CounterStates initialState) : super(initialState);

  static  CounterBloc  get(context) => BlocProvider.of(context);
  int counter = 0;



  @override
  Stream<CounterStates> mapEventToState(CounterEvent event) async* {
    print('this is counter state $counter');
    if (event is CounterIncrementsEvent) {
      yield CounterIncrementState(counter: counter++);
    } else if (event is CounterDecrementsEvent) {
      yield CounterDecrementState(counter: counter--);
    }else if (event is CounterStopEvent) {
      print(event);
      yield CounterStopState(counter: 0 );
    }
  }
}
