import 'package:built_redux/built_redux.dart';
import 'package:flutter_business_card_website/di/di_container.dart';

import '../../domain/domain.dart';

abstract class BaseBloc {
  Store<AppState, AppStateBuilder, AppActions> get store => diContainer.get<Store>();
  AppActions get actions => store.actions;
  void init() {}
  void dispose() {}
}
