import 'package:bloc_project/Flutter_bloc_code/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //get information of the bloc
    final information = context.watch<CounterBloc>();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Bloc",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      //use blocBuilder to rebuild Ui with change state (<bloc , type of bloc>)
      body: BlocBuilder<CounterBloc, int>(
        builder: (BuildContext context, int count) {
          return Center(
            child: Text(
              "Number: $count",
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
      //use this to change the value of (count) with bloc
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                //get the information of bloc and add the event with read method
                // context.read<CounterBloc>().add(CounterIncrementPressed());

                //.... with watch method
                information.add(CounterIncrementPressed());
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterDecrementPressed());
              },
              child: const Icon(
                Icons.remove,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
