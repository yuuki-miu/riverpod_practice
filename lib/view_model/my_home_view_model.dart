import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/state/my_home_state.dart';

class MyHomePageStateNotifier extends StateNotifier<MyHomePageState> {
  MyHomePageStateNotifier() : super(const MyHomePageState());

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
