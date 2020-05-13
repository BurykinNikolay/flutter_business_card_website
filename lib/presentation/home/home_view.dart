import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_business_card_website/domain/models/app_tab.dart';
import 'package:flutter_business_card_website/domain/models/app_theme.dart';
import 'package:flutter_business_card_website/other/buisness_card_icons.dart';
import 'package:flutter_business_card_website/presentation/about/about.dart';
import 'package:flutter_business_card_website/presentation/home/components/tab_icon.dart';

import 'home_bloc.dart';
import 'home_bloc_injector.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeBloc get bloc => HomeBlocInjector.of(context).bloc;

  final List<Widget> _pagesList = [
    About(),
    Container(
      child: Center(
        child: Text("Page in Progress"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _buildTabBar(),
      appBar: AppBar(
        actions: <Widget>[
          StreamBuilder<AppTheme>(
            stream: bloc.currentThemeStream,
            initialData: bloc.appTheme,
            builder: (context, snapshot) {
              return IconButton(
                icon: Icon(snapshot.data == AppTheme.light ? Icons.wb_sunny : BuisnessCardIcons.moon),
                onPressed: () => bloc.updateTheme(),
              );
            },
          ),
        ],
      ),
      body: StreamBuilder<AppTab>(
        initialData: bloc.activeTab,
        stream: bloc.currentPageStream,
        builder: (context, snapshot) {
          return _pagesList[AppTab.toIndex(snapshot.data)];
        },
      ),
    );
  }

  Widget _buildTabBar() {
    return StreamBuilder<AppTab>(
      initialData: bloc.activeTab,
      stream: bloc.currentPageStream,
      builder: (context, snapshot) {
        final currentIndex = AppTab.toIndex(snapshot.data);
        return CupertinoTabBar(
          currentIndex: currentIndex,
          items: _buildItems(currentIndex),
          onTap: (int index) {
            bloc.updateTab(
              AppTab.fromIndex(index),
            );
          },
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildItems(int currentIndex) => AppTab.values
      .map(
        (tab) => BottomNavigationBarItem(
          icon: TabIcon(tab: tab, currentIndex: currentIndex),
        ),
      )
      .toList();
}
