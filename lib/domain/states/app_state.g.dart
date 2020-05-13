// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final AppTab activeTab;
  @override
  final AppTheme appTheme;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.activeTab, this.appTheme}) : super._() {
    if (activeTab == null) {
      throw new BuiltValueNullFieldError('AppState', 'activeTab');
    }
    if (appTheme == null) {
      throw new BuiltValueNullFieldError('AppState', 'appTheme');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        activeTab == other.activeTab &&
        appTheme == other.appTheme;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, activeTab.hashCode), appTheme.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('activeTab', activeTab)
          ..add('appTheme', appTheme))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AppTab _activeTab;
  AppTab get activeTab => _$this._activeTab;
  set activeTab(AppTab activeTab) => _$this._activeTab = activeTab;

  AppTheme _appTheme;
  AppTheme get appTheme => _$this._appTheme;
  set appTheme(AppTheme appTheme) => _$this._appTheme = appTheme;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _activeTab = _$v.activeTab;
      _appTheme = _$v.appTheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result =
        _$v ?? new _$AppState._(activeTab: activeTab, appTheme: appTheme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
