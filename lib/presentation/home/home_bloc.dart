import 'dart:async';

import 'package:flutter_business_card_website/domain/domain.dart';
import 'package:flutter_business_card_website/domain/models/models.dart';
import 'package:flutter_business_card_website/presentation/base/base_bloc.dart';

class HomeBloc extends BaseBloc {
  AppTab get activeTab => store.state.activeTab;
  AppTheme get appTheme => store.state.appTheme;

  final _currentPageController = StreamController<AppTab>.broadcast();
  final _currentAppThemeController = StreamController<AppTheme>.broadcast();

  Stream<AppTab> get currentPageStream => _currentPageController.stream;
  Stream<AppTheme> get currentThemeStream => _currentAppThemeController.stream;

  StreamSubscription appTabSubscription;
  StreamSubscription appThemeSubscription;

  @override
  void init() {
    super.init();
    appTabSubscription = store.nextSubstate((AppState state) => state.activeTab).listen((_) async {
      _currentPageController.add(activeTab);
    });
    appThemeSubscription = store.nextSubstate((AppState state) => state.appTheme).listen((_) async {
      _currentAppThemeController.add(appTheme);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _currentPageController.close();
    appTabSubscription.cancel();
    _currentAppThemeController.close();
    appThemeSubscription.cancel();
  }

  void updateTab(AppTab tab) {
    actions.updateTab(tab);
  }

  void updateTheme() {
    AppTheme newTheme;
    if (appTheme == AppTheme.light) {
      newTheme = AppTheme.dark;
    } else {
      newTheme = AppTheme.light;
    }
    actions.setAppTheme(newTheme);
  }
}
