import 'package:built_redux/built_redux.dart';

import '../domain.dart';

part 'app_actions.g.dart';

abstract class AppActions extends ReduxActions {
  AppActions._();

  factory AppActions() = _$AppActions;

  ActionDispatcher<AppTab> get updateTab;
  ActionDispatcher<AppTheme> get setAppTheme;
}
