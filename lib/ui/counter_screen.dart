import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocexample/bloc/counter_bloc.dart';
import 'package:flutterblocexample/bloc/counter_event.dart';
import 'package:flutterblocexample/bloc/counter_state.dart';

class CounterScreenState extends StatefulWidget {
  const CounterScreenState({super.key});

  @override
  State<CounterScreenState> createState() => _CounterScreenStateState();
}

class _CounterScreenStateState extends State<CounterScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bloc "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementEvent());
                    },
                    child: const Text("Increment")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementEvent());
                    },
                    child: const Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
