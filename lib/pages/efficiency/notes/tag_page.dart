import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle/components/notes/cu_tag_dialog.dart';
import 'package:jungle/constants/efficiency/notes/tag_contants.dart';
import 'package:jungle/models/efficiency/notes/tag_model.dart';
import 'package:jungle/widgets/Iconfont.dart';

class TagPaage extends StatefulWidget {
  const TagPaage({super.key});

  @override
  State<TagPaage> createState() => _TagPaageState();
}

class _TagPaageState extends State<TagPaage> {
  List<TagModel> tagDataList = [
    const TagModel(
        createMemberId: 2745,
        createdAt: "2022-09-16 16:16:01",
        deletedAt: null,
        id: 29,
        institution: 1381,
        labelColourCode: "blue",
        labelName: "还是上海市",
        labelNumber: 0,
        updatedAt: "2022-09-16 16:16:01"),
    const TagModel(
        createMemberId: 2745,
        createdAt: "2022-09-16 16:16:01",
        deletedAt: null,
        id: 30,
        institution: 1381,
        labelColourCode: "green",
        labelName: "爱美丽标签",
        labelNumber: 5,
        updatedAt: "2022-09-16 16:16:01"),
  ];

  Widget notesSearchBarView() {
    return Container(
      width: 375.w,
      height: 46.h,
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
                        hintText: "搜索標簽",
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
                        contentPadding: EdgeInsets.fromLTRB(0, 6, 0, 12),
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
    print('触发了没');
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return const CuTagDialog(cuType: 1, cuData: TagModel(labelName: ''));
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
                '新建標籤',
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

  Widget tagListViewBuilder() {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: tagDataList.length,
            itemBuilder: (BuildContext context, int index) {
              TagModel tagItem = tagDataList[index];
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
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            color: tagColors[tagItem.labelColourCode]),
                      ),
                      Flexible(
                        child: Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              tagItem.labelName ?? '',
                              style: const TextStyle(color: Colors.black),
                              overflow: TextOverflow.ellipsis,
                            )),
                      ),
                      Text(
                        tagItem.labelNumber != 0
                            ? tagItem.labelNumber.toString()
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

  Widget tagList() {
    return Container(
      height: 430.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: tagDataList.isEmpty ? emptyDefault() : tagListViewBuilder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [notesSearchBarView(), addTagBox(), tagList()],
    );
  }
}
