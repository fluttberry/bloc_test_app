import 'package:bloc_test_app/bloc/counter_bloc.dart';
import 'package:bloc_test_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => CounterBloc())],
        child: HomePage(),
      ),
    );
  }
}
