import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_business_card_website/domain/domain.dart';
import 'package:flutter_business_card_website/domain/models/models.dart';
import 'package:flutter_business_card_website/presentation/base/base_bloc.dart';

class HomeBloc extends BaseBloc {
  AppTab get activeTab => store.state.activeTab;

  final _currentPageController = StreamController<AppTab>.broadcast();
  Stream<AppTab> get currentPage => _currentPageController.stream;
  StreamSubscription appTabSubscription;


  @override
  void init() {
    super.init();
    appTabSubscription = store.nextSubstate((AppState state) => state.activeTab).listen((_) async {
      _currentPageController.add(activeTab);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _currentPageController.close();
    appTabSubscription.cancel();
  }

  void updateTab(AppTab tab) {
    actions.updateTab(tab);
  }
}

