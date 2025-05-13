import 'package:bloc_test_app/bloc/counter_event.dart';
import 'package:bloc_test_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc  {
  CounterBloc(): super (CounterState()){
    on <CounterGetEvent> (_getCounter);
  }
}

_getCounter (CounterGetEvent event, emit){
  emit (CounterErrorState(error: 'error'));
}