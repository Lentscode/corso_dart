Stream<String> myStream() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield "Hello $i";
  }
}
