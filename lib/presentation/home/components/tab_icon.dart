import 'package:flutter/material.dart';
import 'package:flutter_business_card_website/domain/models/app_tab.dart';

class TabIcon extends StatelessWidget {
  const TabIcon({this.tab, this.currentIndex});
  final AppTab tab;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    final bool active = currentIndex == AppTab.toIndex(tab);
    return Icon(
      active ? AppTab.activeIconByTab(tab) : AppTab.passiveIconByTab(tab),
      color: active ? Colors.white : Colors.grey,
    );
  }
}
