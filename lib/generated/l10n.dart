// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `KYY`
  String get kyy {
    return Intl.message(
      'KYY',
      name: 'kyy',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `Simplified`
  String get simplified {
    return Intl.message(
      'Simplified',
      name: 'simplified',
      desc: '',
      args: [],
    );
  }

  /// `Traditional`
  String get traditional {
    return Intl.message(
      'Traditional',
      name: 'traditional',
      desc: '',
      args: [],
    );
  }

  /// `Welcome use KYY`
  String get welcome {
    return Intl.message(
      'Welcome use KYY',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Verification code login`
  String get verificationCodeLogin {
    return Intl.message(
      'Verification code login',
      name: 'verificationCodeLogin',
      desc: '',
      args: [],
    );
  }

  /// `Password login`
  String get passLogin {
    return Intl.message(
      'Password login',
      name: 'passLogin',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR codes login`
  String get qrcodeLogin {
    return Intl.message(
      'Scan QR codes login',
      name: 'qrcodeLogin',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your mobile phone number`
  String get phoneInputTips {
    return Intl.message(
      'Please enter your mobile phone number',
      name: 'phoneInputTips',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get passInputTips {
    return Intl.message(
      'Please enter your password',
      name: 'passInputTips',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code`
  String get verificationInputTips {
    return Intl.message(
      'Please enter the verification code',
      name: 'verificationInputTips',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Automatic login`
  String get autoLogin {
    return Intl.message(
      'Automatic login',
      name: 'autoLogin',
      desc: '',
      args: [],
    );
  }

  /// `Forget the password`
  String get forgetPass {
    return Intl.message(
      'Forget the password',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive Account`
  String get exclusiveAcc {
    return Intl.message(
      'Exclusive Account',
      name: 'exclusiveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Registering an Account`
  String get registering {
    return Intl.message(
      'Registering an Account',
      name: 'registering',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
      Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'HK'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
