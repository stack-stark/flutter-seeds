import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle/components/index/bottom_navigation_tabs.dart';
import 'package:jungle/pages/home/home.dart';
import 'package:jungle/pages/mall/mall.dart';
import 'package:jungle/pages/messages/messages.dart';
import 'package:jungle/pages/workbench/workbench.dart';
import 'package:jungle/store/system.dart';
import 'package:jungle/utils/system_tray_service.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with WindowListener {
  int currentIndex = 0;
  List<Widget> pages = [];

  void _closeApp() async {
    await windowManager.setPreventClose(true);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    // initSystemTray();
    // windowManager.addListener(this);
    // _closeApp();
    pages
      ..add(const Home())
      ..add(const Mall())
      ..add(const Messages())
      ..add(const Workbench())
      ..add(const Workbench());
  }

  @override
  void dispose() {
    // windowManager.removeListener(this);
    // super.dispose();
  }

  @override
  void onWindowClose() async {
    bool isClose = await windowManager.isPreventClose();
    if (isClose) {
      showDialog<void>(
        context: context,
        // false = user must tap button, true = tap outside dialog
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: const Text('警告'),
            content: const Text('即将关闭本程序，是否继续？'),
            actions: <Widget>[
              TextButton(
                child: const Text('取消'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
              TextButton(
                child: const Text('关闭'),
                onPressed: () async {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                  await windowManager.destroy();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: pages[context.watch<SystemState>().currentIndex],
      bottomNavigationBar: const BottomNavigationTabs(),
    );
  }
}
