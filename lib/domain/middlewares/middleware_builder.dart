import 'package:built_redux/built_redux.dart';

import '../domain.dart';

final List<void Function(Action<dynamic>) Function(void Function(Action<dynamic>)) Function(MiddlewareApi<AppState, AppStateBuilder, AppActions>)> middlewares = [];
