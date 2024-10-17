import 'package:flutter_bloc/flutter_bloc.dart';

/// !Cubit<dynamic> doesn't follow zero argument constructor
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
