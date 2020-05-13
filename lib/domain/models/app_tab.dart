library app_tab;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_business_card_website/other/buisness_card_icons.dart';

part 'app_tab.g.dart';

class AppTab extends EnumClass {
  static const AppTab about = _$about;
  static const AppTab projects = _$projects;

  const AppTab._(String name) : super(name);

  static BuiltSet<AppTab> get values => _$appTabValues;

  static AppTab valueOf(String name) => _$appTabValueOf(name);

  static AppTab fromIndex(int index) {
    switch (index) {
      case 0:
        return AppTab.about;
      case 1:
        return AppTab.projects;
      default:
        return AppTab.about;
    }
  }

  static int toIndex(AppTab tab) {
    switch (tab) {
      case AppTab.about:
        return 0;
      case AppTab.projects:
        return 1;
      default:
        return 0;
    }
  }

  static IconData activeIconByTab(AppTab tab) {
    switch (tab) {
      case AppTab.about:
        return BuisnessCardIcons.user;
      case AppTab.projects:
        return BuisnessCardIcons.apps;

      default:
        return null;
    }
  }

  static IconData passiveIconByTab(AppTab tab) {
    switch (tab) {
      case AppTab.about:
        return BuisnessCardIcons.user;
      case AppTab.projects:
        return BuisnessCardIcons.apps;
      default:
        return null;
    }
  }
}
