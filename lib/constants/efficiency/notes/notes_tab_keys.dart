import 'package:jungle/models/efficiency/notes/notes_tab_keys_model.dart';

const String notesTabsIconsDir = "assets/images/notes/";

List<NotesTabKeysModel> notesTabKeys = [
  NotesTabKeysModel(
      label: '全部筆記',
      iconUrl: '${notesTabsIconsDir}icon_tabs_all@2x.png',
      key: 'all'),
  NotesTabKeysModel(
      label: '標簽',
      iconUrl: '${notesTabsIconsDir}icon_tabs_tag@2x.png',
      key: 'tag'),
  NotesTabKeysModel(
      label: '筆記本',
      iconUrl: '${notesTabsIconsDir}icon_tabs_notebooks@2x.png',
      key: 'notebooks')
];
