import 'package:built_redux/built_redux.dart';

import '../domain.dart';



final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()..combineNested(createAppStateReducer());
final reducers = reducerBuilder.build();
