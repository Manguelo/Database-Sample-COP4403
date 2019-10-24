import 'package:flutter/material.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/screens/data_page.dart';
import 'package:flutter_database/screens/login_page.dart';
import 'package:flutter_database/screens/shop_page.dart';
import 'package:flutter_database/widgets/login_dialog.dart';
import 'package:flutter_database/widgets/result_dialog.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.databaseStore;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Choose an Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text('Login Example'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Shop Example'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopPage(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
