import 'package:flutter/material.dart';
import 'package:jungle/models/efficiency/notes/sort_options_model.dart';

class SortContent extends StatefulWidget {
  const SortContent({super.key});

  @override
  State<SortContent> createState() => _SortContentState();
}

class _SortContentState extends State<SortContent> {
  Widget sortTitleBuild() {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '排序',
            style: TextStyle(fontSize: 16.0),
          ),
          Container(
            margin: const EdgeInsets.only(left: 142.5),
            child: const Icon(
              Icons.close,
              size: 14.0,
              color: Color.fromRGBO(34, 34, 34, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget sortContentBuild(sortItem) {
    List<Widget> childen = (sortItem.options as List)
        .map((item) => Container(
              width: 165.0,
              height: 36.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.white,
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromRGBO(204, 204, 204, 1)))),
              child: Center(
                child: Text(
                  item.label,
                  style: const TextStyle(
                      color: Color.fromRGBO(34, 34, 34, 1), fontSize: 16.0),
                ),
              ),
            ))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Text(sortItem.title, style: const TextStyle(fontSize: 16.0)),
        const SizedBox(
          height: 10.0,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: childen),
      ],
    );
  }

  List<SortOptionsModel> sortOptions = [
    SortOptionsModel(title: '筆記預覽', key: 'review', options: [
      SortOptions(label: '筆記摘要', code: 'abstract'),
      SortOptions(label: '筆記列表', code: 'list')
    ]),
    SortOptionsModel(title: '按創建日期', key: 'create_at', options: [
      SortOptions(label: '時間最近到最遠', code: 'desc'),
      SortOptions(label: '時間最遠到最近', code: 'asc')
    ]),
    SortOptionsModel(title: '按更新日期', key: 'update_at', options: [
      SortOptions(label: '時間最近到最遠', code: 'desc'),
      SortOptions(label: '時間最遠到最近', code: 'asc')
    ]),
  ];

  List<Widget> sortContentBuildRun() {
    List<Widget> temp = [];
    for (var item in sortOptions) {
      temp.add(sortContentBuild(item));
    }
    return temp;
  }

  Widget sortOptionsContentBuild() {
    return Container(
      height: 255.0,
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 10.0),
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Color.fromRGBO(229, 229, 229, 1)),
              bottom: BorderSide(color: Color.fromRGBO(229, 229, 229, 1)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sortContentBuildRun(),
      ),
    );
  }

  void closeSort() {
    Navigator.pop(context);
  }

  Widget sortFooterBuild() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 165.0,
            height: 36.0,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0))),
                side: MaterialStateProperty.all(
                  const BorderSide(
                      color: Color.fromRGBO(204, 204, 204, 1), width: 1.0),
                ),
              ),
              child: const Text(
                "重置",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onPressed: () => closeSort(),
            ),
          ),
          SizedBox(
            width: 165.0,
            height: 36.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(33, 118, 255, 1)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0))),
              ),
              onPressed: () {},
              child: const Text(
                "確定",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 358.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sortTitleBuild(),
            sortOptionsContentBuild(),
            sortFooterBuild()
          ],
        ));
  }
}
