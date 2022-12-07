import 'package:flutter/material.dart';
import 'package:jungle/components/login/lang_set.dart';
import 'package:jungle/generated/l10n.dart';
import 'package:window_manager/window_manager.dart';

class LoginHeader extends StatefulWidget {
  const LoginHeader({super.key});

  @override
  State<LoginHeader> createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  double _progress = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [titleOperation(), configView()],
      ),
    );
  }

  Widget titleOperation() {
    return Row(
      children: const [
        Icon(
          Icons.close,
          size: 12.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        Icon(
          Icons.minimize,
          size: 12.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        Icon(
          Icons.home_max,
          size: 12.0,
        ),
      ],
    );
  }

  Widget configView() {
    return Row(
      children: [
        const Icon(
          Icons.settings,
          size: 16.0,
          color: Color(0xFF717376),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          S.of(context).setting,
          style: const TextStyle(color: Color(0xFF717376)),
        ),
        Container(
          height: 16.0,
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: const BoxDecoration(
              border: Border(
                  left: BorderSide(color: Color(0xFFE3E6EB), width: 1.0))),
        ),
        const LangSet(),
      ],
    );
  }
}
