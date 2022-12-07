import 'package:flutter/material.dart';
import 'package:jungle/components/notes/notes_header.dart';
import 'package:jungle/pages/efficiency/notes/notebooks_page.dart';
import 'package:jungle/pages/efficiency/notes/notes_list_page.dart';
import 'package:jungle/pages/efficiency/notes/tag_page.dart';
import 'package:jungle/store/notes.dart';
import 'package:provider/provider.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  Map<String, Widget> notesPages = {
    'all': const NotesListPage(),
    'tag': const TagPaage(),
    'notebooks': const NoteBooksPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const NotesHeader(),
        notesPages[context.watch<NotesState>().notesTabNowActiveKey] ??
            const NotesListPage()
      ],
    );
  }
}
