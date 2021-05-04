import 'dart:async';

Future<String> getProfileUserName() async {
  await Future.delayed(Duration(seconds: 5));

  return "Julian Currie";
}

Future<String> getCountry() async {
  await Future.delayed(Duration(seconds: 5));

  return "Thailand";
}

Stream<int> getSessionTime() {
  return Stream.periodic(Duration(seconds: 1), (sessionTime) => sessionTime++);
}
