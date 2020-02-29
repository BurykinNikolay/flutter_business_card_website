import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_business_card_website/domain/models/app_tab.dart';
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
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _buildTabBar(),
      body: StreamBuilder<AppTab>(
        initialData: bloc.activeTab,
        stream: bloc.currentPage,
        builder: (context, snapshot) {
          return _pagesList[AppTab.toIndex(snapshot.data)];
        },
      ),
    );
  }

  Widget _buildTabBar() {
    return StreamBuilder<AppTab>(
      initialData: bloc.activeTab,
      stream: bloc.currentPage,
      builder: (context, snapshot) {
        final currentIndex = AppTab.toIndex(snapshot.data);
        return CupertinoTabBar(
          backgroundColor: Colors.black,
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
