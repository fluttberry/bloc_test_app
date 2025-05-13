import 'package:bloc_test_app/bloc/counter_bloc.dart';
import 'package:bloc_test_app/bloc/counter_event.dart';
import 'package:bloc_test_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder <CounterBloc, CounterState> (
            builder: (context, state) {
              return Text('${state.count}');
            }
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementEvent());
            },
            child: Text('+'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementEvent());
            },
            child: Text('-'),
          ),
        ],
      ),
    );
  }
}
