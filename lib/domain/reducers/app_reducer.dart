import 'package:built_redux/built_redux.dart';

import '../domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder> createAppStateReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder>(
    (state) => state,
    (builder) => builder,
  )
    ..add(AppActionsNames.updateTab, _updateTab)
    ..add(AppActionsNames.setAppTheme, _setAppTheme);
}

void _updateTab(
  AppState state,
  Action<AppTab> action,
  AppStateBuilder builder,
) =>
    builder.activeTab = action.payload;
void _setAppTheme(
  AppState state,
  Action<AppTheme> action,
  AppStateBuilder builder,
) =>
    builder.appTheme = action.payload;
