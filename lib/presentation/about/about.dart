import 'package:flutter/material.dart';

import 'about_bloc.dart';
import 'about_bloc_injector.dart';
import 'about_view.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  AboutBloc bloc;
  @override
  void initState() {
    bloc = AboutBloc();
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AboutBlocInjector(
      bloc: bloc,
      child: AboutView(),
    );
  }
}
