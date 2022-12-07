import 'package:flutter/material.dart';
import 'package:jungle/constants/efficiency/efficiency_header_tabs.dart';
import 'package:jungle/store/Efficiency.dart';
import 'package:provider/provider.dart';

class EfficiencyHeader extends StatefulWidget {
  const EfficiencyHeader({Key? key}) : super(key: key);

  @override
  State<EfficiencyHeader> createState() => _EfficiencyHeaderState();
}

class _EfficiencyHeaderState extends State<EfficiencyHeader> {
  changeKey(String key) {
    Provider.of<EfficiencyState>(context, listen: false)
        .updateTabsActiveKey(key);
  }

  efficiencyHeaderTabsItem() {
    List<Widget> efficiencyHeaderTabsItems = [];
    for (var item in efficiencyHeaderTabs) {
      efficiencyHeaderTabsItems.add(Container(
        padding: const EdgeInsets.only(right: 25.0),
        child: InkWell(
          onTap: () => changeKey(item.key),
          child: Text(
            item.label,
            style: item.key ==
                    context
                        .watch<EfficiencyState>()
                        .efficiencyHeaderTabsActiveKey
                ? const TextStyle(
                    color: Color.fromRGBO(33, 118, 255, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700)
                : const TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
      ));
    }
    return efficiencyHeaderTabsItems;
  }

  Widget iconLeading() {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: iconLeading(),
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: efficiencyHeaderTabsItem(),
      ),
      elevation: 0,
    );
  }
}
