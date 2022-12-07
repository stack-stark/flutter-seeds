import 'package:jungle/models/index/bottom_tabs_model.dart';

const String bottomTabsIconsDir = "assets/images/bottom_tabs/";

Map<String, BottomTabsModel> bottomTabsMap = {
  'home': BottomTabsModel(
    label: '首页',
    iconUrl: '${bottomTabsIconsDir}icon_tab_home_normal.png',
    activeIconUrl: '${bottomTabsIconsDir}icon_tab_home_select.png',
  ),
  'dynamic': BottomTabsModel(
    label: '選品',
    iconUrl: '${bottomTabsIconsDir}toolbar_icon_classify_nor@3x.png',
    activeIconUrl: '${bottomTabsIconsDir}toolbar_icon_classify_sel@3x.png',
  ),
  'add': BottomTabsModel(
    label: '',
    iconUrl: '${bottomTabsIconsDir}home_iconc_add@3x.png',
    activeIconUrl: '${bottomTabsIconsDir}home_iconc_add@3x.png',
  ),
  'msg': BottomTabsModel(
    label: '消息',
    iconUrl: '${bottomTabsIconsDir}icon_tab_message_normal.png',
    activeIconUrl: '${bottomTabsIconsDir}icon_tab_message_select.png',
  ),
  'workbench': BottomTabsModel(
    label: '工作台',
    iconUrl: '${bottomTabsIconsDir}icon_tab_workbench_normal.png',
    activeIconUrl: '${bottomTabsIconsDir}icon_tab_workbench_select.png',
  ),
};
