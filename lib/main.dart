import 'dart:io';

import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jungle/generated/l10n.dart';
import 'package:jungle/index.dart';
import 'package:jungle/pages/login/login.dart';
import 'package:jungle/store/Efficiency.dart';
import 'package:jungle/store/localizations_state.dart';
import 'package:jungle/store/notes.dart';
import 'package:jungle/store/system.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();
  await SpUtil.getInstance();
  // WindowOptions windowOptions = const WindowOptions(
  //   size: Size(480, 648),
  //   center: true,
  //   backgroundColor: Colors.transparent,
  //   skipTaskbar: false,
  //   titleBarStyle: TitleBarStyle.hidden,
  // );
  // windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SystemState()),
      ChangeNotifierProvider(create: (_) => EfficiencyState()),
      ChangeNotifierProvider(create: (_) => NotesState()),
      ChangeNotifierProvider(create: (_) => LocalizationsState()),
    ],
    child: const App(),
  ));
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    final virtualWindowFrameBuilder = VirtualWindowFrameInit();
    var localeState = Provider.of<LocalizationsState>(context);
    return MaterialApp(
        localizationsDelegates: const [
          S.delegate,
        ],
        debugShowCheckedModeBanner: false,
        supportedLocales: S.delegate.supportedLocales,
        locale: localeState.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, child) {
          child = virtualWindowFrameBuilder(context, child);
          return child;
        },
        home: IndexPage());
  }
}
