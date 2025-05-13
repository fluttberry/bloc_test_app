import 'package:bloc_test_app/bloc/counter_event.dart';
import 'package:bloc_test_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrementEvent>(_counterInc);
    on<CounterDecrementEvent>(_counterDec);
  }

  _counterInc(CounterIncrementEvent event, emit) {
    int counter = state.count;
    counter++;
    emit(CounterState(count: counter));
  }

  _counterDec(CounterDecrementEvent event, emit) {
    int counter = state.count;
    counter--;
    emit(CounterState(count: counter));
}
}