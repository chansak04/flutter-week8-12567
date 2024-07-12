Stream<String> getUserName2() async*{
  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Mark Zuckerberg';

  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.John Doe';

  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Elon Musk';
}