import 'package:flutter_database/stores/database_store.dart';
import 'package:mobx/mobx.dart';

part 'root_store.g.dart';

class RootStore = _RootStore with _$RootStore;

abstract class _RootStore with Store {
  _RootStore() {
    databaseStore = DatabaseStore(rootStore: this);
  }

  DatabaseStore databaseStore;
}
