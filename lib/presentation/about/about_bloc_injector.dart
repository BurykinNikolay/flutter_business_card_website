import 'package:flutter/widgets.dart';

import 'about_bloc.dart';

class AboutBlocInjector extends InheritedWidget {
  AboutBlocInjector({
    Key key,
    @required this.bloc,
    @required Widget child,
  }) : super(key: key, child: child);

  final AboutBloc bloc;

  static AboutBlocInjector of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AboutBlocInjector>();

  @override
  bool updateShouldNotify(AboutBlocInjector oldWidget) => bloc != oldWidget.bloc;
}
