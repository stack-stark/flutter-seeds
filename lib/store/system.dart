import 'package:flutter/cupertino.dart';

class SystemState with ChangeNotifier {
  int _currentIndex = 0;
  get currentIndex => _currentIndex;

  void updateCurrentIndex(int currentIndex) {
    _currentIndex = currentIndex;
    notifyListeners();
  }
}
