import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 10;

  CounterProvider(String base) {
    if(int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}