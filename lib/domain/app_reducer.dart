import 'package:built_redux/built_redux.dart';

import 'app_state.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder> createAppStateReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder>(
    (state) => state,
    (builder) => builder,
  );
}




final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..combineNested(createAppStateReducer());
final reducers = reducerBuilder.build();
