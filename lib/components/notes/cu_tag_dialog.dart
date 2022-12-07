import 'package:flutter/material.dart';
import 'package:jungle/constants/efficiency/notes/tag_contants.dart';
import 'package:jungle/models/efficiency/notes/tag_model.dart';

class CuTagDialog extends StatefulWidget {
  const CuTagDialog({Key? key, required this.cuType, required this.cuData})
      : super(
          key: key,
        );

  final int cuType;
  final TagModel cuData;

  @override
  State<CuTagDialog> createState() => _CuTagDialogState();
}

class _CuTagDialogState extends State<CuTagDialog> {
  String nowSelectedKey = 'pink';

  void changeNowKey(String key) {
    setState(() {
      nowSelectedKey = key;
    });
  }

  List<Widget> tagColorsBuildRun() {
    List<Widget> temp = [];
    for (var item in tagColorOptions) {
      temp.add(InkWell(
        onTap: () => changeNowKey(item.key),
        hoverColor: Colors.white,
        focusColor: Colors.white,
        highlightColor: Colors.white,
        splashColor: Colors.white,
        child: Stack(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: item.key == nowSelectedKey
                    ? item.borderColor
                    : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
            ),
            Container(
              width: 28,
              height: 28,
              margin: const EdgeInsets.fromLTRB(3, 3, 0, 0),
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ],
        ),
      ));
    }
    return temp;
  }

  Widget tagColorsOptionItem() {
    return Container(
      width: 275.0,
      height: 40.0,
      margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tagColorsBuildRun(),
      ),
    );
  }

  void closeDialog() {
    Navigator.of(context).pop();
  }

  Container tagInput() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF0F8FF),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      width: 275.0,
      height: 32.0,
      margin: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 20.0,
      ),
      child: const TextField(
        autofocus: false,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          hintText: "請輸入標簽名稱",
          hintStyle: TextStyle(
              color: Color.fromRGBO(153, 153, 153, 1), fontSize: 14.0),
          border: OutlineInputBorder(borderSide: BorderSide.none), //隐藏下划线
        ),
      ),
    );
  }

  Container diaFooter() {
    return Container(
      height: 44,
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
          border:
              Border(top: BorderSide(color: Color(0xFFE5E5E5), width: 0.5))),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => closeDialog(),
              child: const Center(
                child: Text(
                  '取消',
                  style: TextStyle(color: Color(0xFF333333), fontSize: 17),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => closeDialog(),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        left:
                            BorderSide(color: Color(0xFFE5E5E5), width: 0.5))),
                child: const Center(
                  child: Text(
                    '確定',
                    style: TextStyle(color: Color(0xFF2176FF), fontSize: 17),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '新建标签',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            InkWell(
              hoverColor: Colors.white,
              focusColor: Colors.white,
              highlightColor: Colors.white,
              splashColor: Colors.white,
              onTap: () => closeDialog(),
              child: const Icon(
                Icons.clear_sharp,
                color: Colors.black,
              ),
            )
          ],
        ),
        content: SizedBox(
          width: 300,
          height: 176,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [tagInput(), tagColorsOptionItem(), diaFooter()],
          ),
        ));
  }
}
