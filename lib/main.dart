import 'package:flutter/material.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/screens/home_page.dart';
import 'package:flutter_database/stores/root_store.dart';

void main() {
  final configuredApp = AppConfig(
    rootStore: RootStore(),
    child: MyApp(),
  );
  runApp(configuredApp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Database',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32),
      ),
      home: new MyHomePage(),
    );
  }
}
