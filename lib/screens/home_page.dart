import 'package:flutter/material.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/screens/data_page.dart';
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
          'Hack Me... You Won\'t',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.swap_horiz,
            color: Colors.white,
          ),
          onPressed: () => store.switchMode(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () async => await Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DataPage())),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            final query = store.query;
            final result = store.result;
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: LoginDialog(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(25)),
                ResultPane(
                  header: 'Query',
                  body: query,
                  color: Colors.amber,
                ),
                Padding(padding: EdgeInsets.all(10)),
                ResultPane(
                  header: 'Results',
                  body: result,
                  color: Colors.indigoAccent,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
