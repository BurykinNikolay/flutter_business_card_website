import 'package:flutter/widgets.dart';
import 'package:flutter_business_card_website/presentation/base/base_bloc.dart';

class HomeBloc extends BaseBloc {
  @override
  void init() {
    print("fuck");
    super.init();
  }
}

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
