import 'package:flutter/material.dart';
import 'package:flutter_database/stores/root_store.dart';
import 'package:meta/meta.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    @required this.rootStore,
    @required Widget child,
  }) : super(child: child);

  final RootStore rootStore;

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
