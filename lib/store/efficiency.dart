import 'package:flutter/cupertino.dart';

class EfficiencyState with ChangeNotifier {
  String _efficiencyHeaderTabsActiveKey = 'notes';
  get efficiencyHeaderTabsActiveKey => _efficiencyHeaderTabsActiveKey;

  void updateTabsActiveKey(String key) {
    _efficiencyHeaderTabsActiveKey = key;
    notifyListeners();
  }
}
