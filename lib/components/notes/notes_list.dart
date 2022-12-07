import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  //长按触发弹出菜单
  void onLongPress(BuildContext context, double x, double y) {
    //当添加图片当图片被点击时候
    final RenderBox overlay = Overlay.of(context).context.findRenderObject()
        as RenderBox; //应该是找到容器，这个是抄PopupMenuButton里面抄来的

    RelativeRect position = RelativeRect.fromRect(
      Rect.fromLTRB(x, y, x + 50, y - 50),
      Offset.zero & overlay.size,
    );
    //这里应该是画一个浮动在上面的一个相对矩形，第一个矩形的坐标是根据第二个矩形而言的。
    //第一个矩形我猜应该是显示的菜单可以放的矩形，这里我选择的是按照四个点的坐标来画一个矩形，之前不是拿到了手指点击的位置吗，然后我画来一个以那个位置为左上角的一个大小为50*50的矩形，其实菜单应该大于这个矩形的，可能自动扩大了吧（注意，我们的坐标其实是按照正常全局坐标的，所以我们的容器要按照正常坐标来）
//而第二个矩形应该是容器，也就是放第一个矩形的容器。这个容器这里设置的是按照正常坐标，也就是左上角为0.0，然后大小是之前找到的容器的大小

    PopupMenuItem popupMenuItem2 = const PopupMenuItem(
      value: 2,
      child: Text("星標"),
    );
    PopupMenuItem popupMenuItem1 = const PopupMenuItem(
      value: 1,
      child: Text("刪除"),
    );
    List<PopupMenuEntry<dynamic>> list = [
      popupMenuItem1,
      popupMenuItem2
    ]; //菜单栏需要显示的菜单项集合

    showMenu(context: context, position: position, items: list).then((value) {
      if (value == 1) {
        //根据value判断出到底点了哪个菜单
      }
      if (value == 2) {}
    });
    // PopupMenuButton
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onLongPressStart: (LongPressStartDetails details) {
                //setState(() {});
                double globlePositionX =
                    details.globalPosition.dx; //获取全局触摸到的x方向位置
                double globlePositionY = details.globalPosition.dy -
                    20; //获取全局y方向当位置并且下移20,菜单一般需要显示在下面，而不是按着的位置
                onLongPress(context, globlePositionX, globlePositionY);
              },
              child: Container(
                height: 67.0,
                width: 355.0,
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                margin: const EdgeInsets.only(bottom: 10.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '快優易筆記$index',
                      style: const TextStyle(
                          color: Color.fromRGBO(34, 34, 34, 1), fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: const [
                        Text(
                          '07-22',
                          style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '10:00',
                          style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                              fontSize: 12.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
