import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/material.dart';

class LocalizationsState with ChangeNotifier {
  late String _localeCode = 'en';

  get localeCode => _localeCode;

  static const localeMap = {
    "en": Locale('en', 'US'),
    "zh_Hans_CN": Locale('zh', 'CN'),
    "zh_Hans_HK": Locale('zh', 'HK'),
  };

  Locale? get locale {
    return localeMap[_localeCode] ?? const Locale('en', 'en');
  }

  LocalizationsState() {
    _localeCode = SpUtil.getString('localeCode') ?? 'en';
  }

  void updateLocaleCode(String localeCode) {
    _localeCode = localeCode;
    notifyListeners();
    SpUtil.putString('localeCode', localeCode);
  }
}
