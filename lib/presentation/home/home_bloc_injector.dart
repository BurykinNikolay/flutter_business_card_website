import 'package:flutter/widgets.dart';

import 'home_bloc.dart';

class HomeBlocInjector extends InheritedWidget {
  HomeBlocInjector({
    Key key,
    @required this.bloc,
    @required Widget child,
  }) : super(key: key, child: child);

  final HomeBloc bloc;

  static HomeBlocInjector of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<HomeBlocInjector>();

  @override
  bool updateShouldNotify(HomeBlocInjector oldWidget) => bloc != oldWidget.bloc;
}
