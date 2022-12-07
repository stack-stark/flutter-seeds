import 'package:flutter/material.dart';

class Workbench extends StatefulWidget {
  const Workbench({Key? key}) : super(key: key);

  @override
  State<Workbench> createState() => _WorkbenchState();
}

class _WorkbenchState extends State<Workbench> {
  @override
  Widget build(BuildContext context) {
    return const Text('工作台');
  }
}
