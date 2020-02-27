import 'package:flutter/widgets.dart';

class HomeBloc {}

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
