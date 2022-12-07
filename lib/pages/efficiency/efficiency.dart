import 'package:flutter/material.dart';
import 'package:jungle/components/efficiency/efficiency_header.dart';
import 'package:jungle/store/Efficiency.dart';
import 'package:provider/provider.dart';

import 'listing/listing.dart';
import 'notes/notes.dart';
import 'schedule/schedule.dart';
import 'task/task.dart';

class Efficiency extends StatefulWidget {
  const Efficiency({Key? key}) : super(key: key);

  @override
  State<Efficiency> createState() => _EfficiencyState();
}

class _EfficiencyState extends State<Efficiency> {
  Map<String, Widget> efficiencyPages = {
    'notes': const Notes(),
    'listing': const Listing(),
    'task': const Task(),
    'schedule': const Schedule()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(244, 249, 252, 1),
        child: Column(
          children: [
            const EfficiencyHeader(),
            efficiencyPages[context
                    .watch<EfficiencyState>()
                    .efficiencyHeaderTabsActiveKey] ??
                const Schedule()
          ],
        ),
      ),
    );
  }
}
