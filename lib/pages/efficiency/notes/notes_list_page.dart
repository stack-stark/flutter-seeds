import 'package:flutter/material.dart';
import 'package:jungle/components/notes/notes_list.dart';
import 'package:jungle/components/notes/sort_content.dart';
import 'package:jungle/widgets/iconfont.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({Key? key}) : super(key: key);

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  Widget titleAndFilterView() {
    return Container(
      width: double.infinity,
      height: 45.0,
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                '全部筆記',
                style: TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                '(9)',
                style: TextStyle(
                    fontSize: 14.0, color: Color.fromRGBO(135, 135, 135, 1)),
              )
            ],
          ),
          InkWell(
            onTap: () => showBottomSheet(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Iconfont.iconnote_icon_sort,
                  size: 14.0,
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  '排序',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(34, 34, 34, 1),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void showBottomSheet() {
    //用于在底部打开弹框的效果
    showModalBottomSheet(
        builder: (BuildContext context) {
          //构建弹框中的内容
          return const SortContent();
        },
        context: context);
  }

  Widget notesSearchBarView() {
    return Container(
      height: 42.0,
      padding: const EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 2.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0)),
              width: 330,
              child: Row(
                children: [
                  const SizedBox(
                    width: 260.0,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: "搜索筆記",
                        contentPadding: EdgeInsets.fromLTRB(0, 9, 0, 12),
                        border: InputBorder.none, //隐藏下划线
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(33, 118, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 26.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(33, 118, 255, 1)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0)))),
                      child: const Text(
                        "搜索",
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            width: 28.0,
            height: 28.0,
            margin: const EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14.0)),
            child: const Icon(
              Iconfont.iconsidebar_icon_love,
              size: 14.0,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleAndFilterView(),
        notesSearchBarView(),
        const SizedBox(
          height: 10.0,
        ),
        Stack(
          children: [
            const NotesList(),
            Positioned(
              right: 18.0,
              bottom: 18.0,
              child: FloatingActionButton(
                onPressed: () => {},
                backgroundColor: const Color.fromRGBO(34, 118, 255, 1),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
