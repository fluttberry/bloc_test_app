// ignore_for_file: public_member_api_docs, sort_constructors_first
class CounterState {}

class CounterLoadingState extends CounterState {}
class CounterErrorState extends CounterState {
  String error;
  CounterErrorState({
    required this.error,
  });
}
class  CounterLoadedState extends CounterState {}