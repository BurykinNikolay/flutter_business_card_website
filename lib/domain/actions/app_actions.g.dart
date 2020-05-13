// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final updateTab = ActionDispatcher<AppTab>('AppActions-updateTab');
  final setAppTheme = ActionDispatcher<AppTheme>('AppActions-setAppTheme');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    updateTab.setDispatcher(dispatcher);
    setAppTheme.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final updateTab = ActionName<AppTab>('AppActions-updateTab');
  static final setAppTheme = ActionName<AppTheme>('AppActions-setAppTheme');
}
