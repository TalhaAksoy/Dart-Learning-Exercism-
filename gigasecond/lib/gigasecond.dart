DateTime addGigasecondTo(final DateTime birthDate) {
  final Duration time = new Duration(seconds: 1000000000);
  // Replace the throw call and put your code here
  return birthDate.add(time);
  throw UnimplementedError();
}