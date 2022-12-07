import 'package:flutter/material.dart';
import 'package:jungle/components/login/login_header.dart';
import 'package:jungle/generated/l10n.dart';
import 'package:window_manager/window_manager.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onPanStart: (details) {
          windowManager.startDragging();
        },
        onDoubleTap: () async {
          bool isMaximized = await windowManager.isMaximized();
          if (!isMaximized) {
            windowManager.maximize();
          } else {
            windowManager.unmaximize();
          }
        },
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: Column(
            children: [LoginHeader()],
          ),
        ),
      ),
    );
  }
}
