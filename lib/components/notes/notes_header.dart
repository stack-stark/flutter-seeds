import 'package:flutter/material.dart';
import 'package:jungle/constants/efficiency/notes/notes_tab_keys.dart';
import 'package:jungle/store/notes.dart';
import 'package:provider/provider.dart';

class NotesHeader extends StatefulWidget {
  const NotesHeader({Key? key}) : super(key: key);

  @override
  State<NotesHeader> createState() => _NotesHeaderState();
}

class NotesTabActiveTag extends StatelessWidget {
  const NotesTabActiveTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 3.0,
      margin: const EdgeInsets.only(top: 10.0, left: 25.0),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(33, 118, 255, 1),
          borderRadius: BorderRadius.all(Radius.circular(1.5))),
    );
  }
}

class TabLine extends StatelessWidget {
  const TabLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0,
      height: 15.0,
      margin: const EdgeInsets.only(left: 22.5, right: 37.0),
      color: const Color.fromRGBO(229, 229, 229, 1),
    );
  }
}

class _NotesHeaderState extends State<NotesHeader> {
  // String notesTabNowActiveKey = 'all';

  switchTabKey(String key) {
    Provider.of<NotesState>(context, listen: false)
        .updateNotesTabNowActiveKey(key);
  }

  List<Widget> notesTabsBuild() {
    List<Widget> notesTabs = [];
    for (var item in notesTabKeys) {
      notesTabs.add(
        InkWell(
          onTap: () => switchTabKey(item.key),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(item.iconUrl),
                        width: 18.0,
                        height: 18.0,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        item.label,
                        style: item.key !=
                                context.watch<NotesState>().notesTabNowActiveKey
                            ? const TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1))
                            : const TextStyle(
                                color: Color.fromRGBO(34, 34, 34, 1),
                                fontWeight: FontWeight.w500),
                      ),
                      item.key != 'notebooks'
                          ? const TabLine()
                          : const SizedBox(),
                    ]),
              ),
              item.key == context.watch<NotesState>().notesTabNowActiveKey
                  ? const NotesTabActiveTag()
                  : const SizedBox()
            ],
          ),
        ),
      );
    }
    return notesTabs;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: notesTabsBuild(),
      ),
    );
  }
}
