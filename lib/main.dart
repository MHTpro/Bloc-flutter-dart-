import 'package:bloc_project/ui/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc_project/Flutter_bloc_code/counter_bloc.dart';
//import bloc lib
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //use blocProvider
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}
