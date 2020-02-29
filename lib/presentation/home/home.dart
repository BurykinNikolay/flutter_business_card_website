import 'package:flutter/material.dart';

import 'home_bloc.dart';
import 'home_bloc_injector.dart';
import 'home_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeBloc bloc;
  @override
  void initState() {
    bloc = HomeBloc();
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeBlocInjector(
      bloc: bloc,
      child: HomeView(),
    );
  }
}
