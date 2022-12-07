import 'package:flutter/material.dart';
import 'package:jungle/generated/l10n.dart';

class LangSet extends StatefulWidget {
  const LangSet({super.key});

  @override
  State<LangSet> createState() => _LangSetState();
}

class _LangSetState extends State<LangSet> {
  _getPopupMenu(BuildContext context) {
    return <PopupMenuEntry>[
      const PopupMenuItem(
        value: "复制",
        child: Text("复制"),
      ),
      const PopupMenuItem(
        value: "收藏",
        child: Text("收藏"),
      ),
    ];
  }

  _selectValueChange(value) {
    setState(() {});
  }

  PopupMenuButton _popMenu() {
    return PopupMenuButton(
      itemBuilder: (context) => _getPopupMenu(context),
      onSelected: (value) => {_selectValueChange(value)},
      onCanceled: () {
        setState(() {});
      },
    );
  }

  _showMenu(BuildContext context) {
    const RelativeRect position = RelativeRect.fromLTRB(350, 30, 400, 0);
    var pop = _popMenu();
    showMenu(
      context: context,
      items: pop.itemBuilder(context),
      position: position, //弹出框位置
    ).then((newValue) {
      if (!mounted) {
        return null;
      }
      if (newValue == null) {
        if (pop.onCanceled != null) pop.onCanceled!();
        return null;
      }
      if (pop.onSelected != null) {
        pop.onSelected!(newValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showMenu(context),
      child: Container(
        child: Row(
          children: [
            Text(
              S.of(context).language,
              style: const TextStyle(color: Color(0xFF717376)),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 18.0,
              color: Color(0xFF717376),
            ),
          ],
        ),
      ),
    );
  }
}


    //  Container(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: 11.19, vertical: 8.0),
    //           width: 180.0,
    //           height: 120.0,
    //           decoration: const BoxDecoration(
    //               color: Colors.white,
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Color.fromRGBO(19, 22, 27, 0.16),
    //                   blurRadius: 5.0,
    //                 )
    //               ],
    //               borderRadius: BorderRadius.all(Radius.circular(4.0))),
    //           child: Column(
    //             children: [
    //               Column(
    //                 children: [
    //                   Container(
    //                     height: 32,
    //                     width: 156.63,
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 8, vertical: 5.0),
    //                     decoration: const BoxDecoration(
    //                         color: Color(0xFFDAECFF),
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(4.0))),
    //                     child: const Text(
    //                       '简体中文',
    //                       style: TextStyle(
    //                           color: Color(0xFF13161B), fontSize: 14.0),
    //                     ),
    //                   ),
    //                   Container(
    //                     height: 32,
    //                     width: 156.63,
    //                     margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 8, vertical: 5.0),
    //                     decoration: const BoxDecoration(
    //                         color: Color(0xFFDAECFF),
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(4.0))),
    //                     child: const Text(
    //                       '繁體中文（中国香港）',
    //                       style: TextStyle(
    //                           color: Color(0xFF13161B), fontSize: 14.0),
    //                     ),
    //                   ),
    //                   Container(
    //                     height: 32,
    //                     width: 156.63,
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 8, vertical: 5.0),
    //                     decoration: const BoxDecoration(
    //                         color: Color(0xFFDAECFF),
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(4.0))),
    //                     child: const Text(
    //                       'English',
    //                       style: TextStyle(
    //                           color: Color(0xFF13161B), fontSize: 14.0),
    //                     ),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),