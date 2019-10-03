// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DatabaseStore on _DatabaseStore, Store {
  final _$resultAtom = Atom(name: '_DatabaseStore.result');

  @override
  String get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$queryAtom = Atom(name: '_DatabaseStore.query');

  @override
  String get query {
    _$queryAtom.context.enforceReadPolicy(_$queryAtom);
    _$queryAtom.reportObserved();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.context.conditionallyRunInAction(() {
      super.query = value;
      _$queryAtom.reportChanged();
    }, _$queryAtom, name: '${_$queryAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_DatabaseStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_DatabaseStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$tableAtom = Atom(name: '_DatabaseStore.table');

  @override
  List<Map<String, dynamic>> get table {
    _$tableAtom.context.enforceReadPolicy(_$tableAtom);
    _$tableAtom.reportObserved();
    return super.table;
  }

  @override
  set table(List<Map<String, dynamic>> value) {
    _$tableAtom.context.conditionallyRunInAction(() {
      super.table = value;
      _$tableAtom.reportChanged();
    }, _$tableAtom, name: '${_$tableAtom.name}_set');
  }

  final _$isSignupAtom = Atom(name: '_DatabaseStore.isSignup');

  @override
  bool get isSignup {
    _$isSignupAtom.context.enforceReadPolicy(_$isSignupAtom);
    _$isSignupAtom.reportObserved();
    return super.isSignup;
  }

  @override
  set isSignup(bool value) {
    _$isSignupAtom.context.conditionallyRunInAction(() {
      super.isSignup = value;
      _$isSignupAtom.reportChanged();
    }, _$isSignupAtom, name: '${_$isSignupAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$getTableAsyncAction = AsyncAction('getTable');

  @override
  Future<void> getTable() {
    return _$getTableAsyncAction.run(() => super.getTable());
  }

  final _$mainButtonActionAsyncAction = AsyncAction('mainButtonAction');

  @override
  Future<void> mainButtonAction() {
    return _$mainButtonActionAsyncAction.run(() => super.mainButtonAction());
  }

  final _$_DatabaseStoreActionController =
      ActionController(name: '_DatabaseStore');

  @override
  void switchMode() {
    final _$actionInfo = _$_DatabaseStoreActionController.startAction();
    try {
      return super.switchMode();
    } finally {
      _$_DatabaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_DatabaseStoreActionController.startAction();
    try {
      return super.clear();
    } finally {
      _$_DatabaseStoreActionController.endAction(_$actionInfo);
    }
  }
}
