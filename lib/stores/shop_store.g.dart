// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopStore on _ShopStore, Store {
  final _$resultAtom = Atom(name: '_ShopStore.result');

  @override
  List<Map<String, dynamic>> get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(List<Map<String, dynamic>> value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$queryAtom = Atom(name: '_ShopStore.query');

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

  final _$nameAtom = Atom(name: '_ShopStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$priceAtom = Atom(name: '_ShopStore.price');

  @override
  int get price {
    _$priceAtom.context.enforceReadPolicy(_$priceAtom);
    _$priceAtom.reportObserved();
    return super.price;
  }

  @override
  set price(int value) {
    _$priceAtom.context.conditionallyRunInAction(() {
      super.price = value;
      _$priceAtom.reportChanged();
    }, _$priceAtom, name: '${_$priceAtom.name}_set');
  }

  final _$searchHiddenAtom = Atom(name: '_ShopStore.searchHidden');

  @override
  bool get searchHidden {
    _$searchHiddenAtom.context.enforceReadPolicy(_$searchHiddenAtom);
    _$searchHiddenAtom.reportObserved();
    return super.searchHidden;
  }

  @override
  set searchHidden(bool value) {
    _$searchHiddenAtom.context.conditionallyRunInAction(() {
      super.searchHidden = value;
      _$searchHiddenAtom.reportChanged();
    }, _$searchHiddenAtom, name: '${_$searchHiddenAtom.name}_set');
  }

  final _$tableAtom = Atom(name: '_ShopStore.table');

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

  final _$isSignupAtom = Atom(name: '_ShopStore.isSignup');

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

  final _$searchAsyncAction = AsyncAction('search');

  @override
  Future<void> search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  final _$getTableAsyncAction = AsyncAction('getTable');

  @override
  Future<void> getTable() {
    return _$getTableAsyncAction.run(() => super.getTable());
  }

  final _$addItemsAsyncAction = AsyncAction('addItems');

  @override
  Future<void> addItems() {
    return _$addItemsAsyncAction.run(() => super.addItems());
  }

  final _$_ShopStoreActionController = ActionController(name: '_ShopStore');

  @override
  void toggleSearch() {
    final _$actionInfo = _$_ShopStoreActionController.startAction();
    try {
      return super.toggleSearch();
    } finally {
      _$_ShopStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_ShopStoreActionController.startAction();
    try {
      return super.clear();
    } finally {
      _$_ShopStoreActionController.endAction(_$actionInfo);
    }
  }
}
