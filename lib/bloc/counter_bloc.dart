import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocexample/bloc/counter_event.dart';
import 'package:flutterblocexample/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
  }

  FutureOr<void> _increment(IncrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(state.count + 1));
  }

  FutureOr<void> _decrement(DecrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(state.count - 1));
  }
}
