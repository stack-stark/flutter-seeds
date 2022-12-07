import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jungle/constants/bottom_tabs/bottom_tabs_map.dart';
import 'package:jungle/store/system.dart';
import 'package:provider/provider.dart';

class BottomNavigationTabs extends StatefulWidget {
  const BottomNavigationTabs({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTabs> createState() => _BottomNavigationTabsState();
}

class _BottomNavigationTabsState extends State<BottomNavigationTabs> {
  int _currentIndex = 0;

  _onTap(int index) {
    if (kDebugMode) {
      print(index.toString());
    }
    setState(() {
      _currentIndex = index;
    });
    Provider.of<SystemState>(context, listen: false).updateCurrentIndex(index);
  }

  Widget activeIcon(src) {
    return Image.asset(
      src,
      width: 22.0,
      height: 22.0,
    );
  }

  Widget iconImageAdd(src) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Image.asset(
        src,
        width: 35.0,
        height: 35.0,
      ),
    );
  }

  Widget iconImage(src) {
    return Image.asset(
      src,
      width: 22.0,
      height: 22.0,
    );
  }

  List<BottomNavigationBarItem> bottomNavigationBarItemView() {
    return [
      BottomNavigationBarItem(
          label: bottomTabsMap['home']?.label,
          icon: iconImage(bottomTabsMap['home']?.iconUrl),
          activeIcon: activeIcon(bottomTabsMap['home']?.activeIconUrl)),
      BottomNavigationBarItem(
          label: bottomTabsMap['dynamic']?.label,
          icon: iconImage(bottomTabsMap['dynamic']?.iconUrl),
          activeIcon: activeIcon(bottomTabsMap['dynamic']?.activeIconUrl)),
      BottomNavigationBarItem(
          label: bottomTabsMap['add']?.label,
          icon: iconImageAdd(bottomTabsMap['add']?.iconUrl),
          activeIcon: iconImageAdd(bottomTabsMap['add']?.activeIconUrl)),
      BottomNavigationBarItem(
          label: bottomTabsMap['msg']?.label,
          icon: iconImage(bottomTabsMap['msg']?.iconUrl),
          activeIcon: activeIcon(bottomTabsMap['msg']?.activeIconUrl)),
      BottomNavigationBarItem(
          label: bottomTabsMap['workbench']?.label,
          icon: iconImage(bottomTabsMap['workbench']?.iconUrl),
          activeIcon: activeIcon(bottomTabsMap['workbench']?.activeIconUrl)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onTap,
      currentIndex: _currentIndex,
      selectedItemColor: const Color.fromRGBO(29, 52, 97, 1),
      showUnselectedLabels: true,
      unselectedItemColor: const Color.fromRGBO(29, 52, 97, 1),
      unselectedLabelStyle:
          const TextStyle(color: Color.fromRGBO(29, 52, 97, 1)),
      items: bottomNavigationBarItemView(),
    );
  }
}
