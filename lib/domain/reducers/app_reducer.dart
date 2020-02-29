import 'package:built_redux/built_redux.dart';

import '../domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder> createAppStateReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder>(
    (state) => state,
    (builder) => builder,
  )..add(AppActionsNames.updateTab, _updateTab);
}

void _updateTab(
  AppState state,
  Action<AppTab> action,
  AppStateBuilder builder,
) =>
    builder.activeTab = action.payload;
