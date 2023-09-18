class MyHomePageState {
  const MyHomePageState({this.counter = 0});

  final counter;

  MyHomePageState copyWith(int counter) => MyHomePageState(counter: counter);
}
