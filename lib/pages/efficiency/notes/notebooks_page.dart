import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle/models/efficiency/notes/notebooks_model.dart';
import 'package:jungle/widgets/Iconfont.dart';

class NoteBooksPage extends StatefulWidget {
  const NoteBooksPage({super.key});

  @override
  State<NoteBooksPage> createState() => _NoteBooksPageState();
}

class _NoteBooksPageState extends State<NoteBooksPage> {
  List<NotebooksModel> notebooksList = [
    const NotebooksModel(
      createMemberId: 2745,
      updatedAt: "2022-09-15 15:17:46",
      deletedAt: null,
      firstLock: 0,
      id: 27,
      institution: 1326,
      isLock: 1,
      noteBookName: "斤斤计较军军",
      noteNumber: 19,
      password: "",
      createdAt: "2022-09-15 15:19:31",
    ),
    const NotebooksModel(
      createMemberId: 2745,
      updatedAt: "2022-09-15 15:17:46",
      deletedAt: null,
      firstLock: 0,
      id: 28,
      institution: 1326,
      isLock: 0,
      noteBookName: "计算机",
      noteNumber: 15,
      password: "",
      createdAt: "2022-09-15 15:19:31",
    ),
  ];

  Widget notesSearchBarView() {
    return Container(
      width: 375.w,
      height: 42.h,
      padding: const EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 2.5),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 250, 255, 1),
                  borderRadius: BorderRadius.circular(16.r)),
              width: 330.0,
              child: Row(
                children: [
                  const SizedBox(
                    width: 260.0,
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: "搜索筆記本",
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
                        contentPadding: EdgeInsets.fromLTRB(0, 6, 0, 1),
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
                                  borderRadius: BorderRadius.circular(22.r)))),
                      child: const Text(
                        "搜索",
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  addTagDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return Text('text');
        // const CuTagDialog(cuType: 1, cuData: TagModel(labelName: ''));
      },
    );
  }

  Widget addTagBox() {
    return Container(
        height: 55.h,
        width: 375.w,
        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: InkWell(
          onTap: () => addTagDialog(),
          child: Row(
            children: const [
              Icon(
                Iconfont.iconnavbar_icon_add,
                size: 16.0,
                color: Color.fromRGBO(33, 118, 255, 1),
              ),
              SizedBox(width: 5.0),
              Text(
                '新建筆記本',
                style: TextStyle(
                    color: Color.fromRGBO(33, 118, 255, 1), fontSize: 16.0),
              )
            ],
          ),
        ));
  }

  Widget emptyDefault() {
    return Container(
      padding: const EdgeInsets.only(top: 28.0),
      width: 375.w,
      height: 444.h,
      decoration: const BoxDecoration(
        color: Color(0xFFF4F9FC),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/notes/default_icon_order@2x.png',
            width: 155.w,
            height: 155.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          const Text(
            '沒有找到你要的標簽～',
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF666666),
            ),
          )
        ],
      ),
    );
  }

  Widget notebooksListViewBuilder() {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: notebooksList.length,
            itemBuilder: (BuildContext context, int index) {
              NotebooksModel tagItem = notebooksList[index];
              return Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xffE5E5E5), width: 1))),
                  height: 55.h,
                  child: Row(
                    children: [
                      const Icon(
                        Iconfont.iconnoteBorder_icon,
                        size: 16.0,
                      ),
                      Flexible(
                        child: Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              tagItem.noteBookName ?? '',
                              style: const TextStyle(color: Colors.black),
                              overflow: TextOverflow.ellipsis,
                            )),
                      ),
                      Text(    
                        tagItem.noteNumber != 0
                            ? tagItem.noteNumber.toString()
                            : '',
                        style: const TextStyle(color: Color(0xff999999)),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            }));
  }

  Widget notebooks() {
    return Container(
      height: 400.h,
      decoration: const BoxDecoration(color: Colors.white),
      child:
          notebooksList.isEmpty ? emptyDefault() : notebooksListViewBuilder(),
    );
  }

  Widget recycle() {
    return Container(
      width: 375.w,
      height: 54.h,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          const Icon(Iconfont.iconnote_icon_basket,
              size: 16.0, color: Color(0xFFC6C6C6)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Text(
              '廢紙簍',
              style: TextStyle(fontSize: 16.0, color: Color(0xFF222222)),
            ),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 16.0, color: Color(0xFFC6C6C6)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [notesSearchBarView(), addTagBox(), notebooks(), recycle()],
    );
  }
}
