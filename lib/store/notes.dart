import 'package:flutter/cupertino.dart';

class NotesState with ChangeNotifier {
  String _notesTabNowActiveKey = 'all';
  get notesTabNowActiveKey => _notesTabNowActiveKey;

  void updateNotesTabNowActiveKey(String key) {
    _notesTabNowActiveKey = key;
    notifyListeners();
  }
}
