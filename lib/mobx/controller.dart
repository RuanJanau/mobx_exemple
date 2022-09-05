// ignore_for_file: unused_local_variable, unused_element, non_constant_identifier_names

import 'package:mobx/mobx.dart';

class Controller {
  final _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  _increment() {
    counter++;
  }

  late Action increment;

  Controller() {
    increment = Action(_increment);
  }
}
