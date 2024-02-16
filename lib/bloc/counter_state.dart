import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count;

  const CounterState({this.count = 0});

  @override
  List<Object?> get props => [count];

  CounterState copyWith(int? count) => CounterState(count: count ?? this.count);
}
