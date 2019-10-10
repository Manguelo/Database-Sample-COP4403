import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/screens/widgets/data_cell.dart' as data;
import 'package:flutter_mobx/flutter_mobx.dart';

class DataPage extends StatefulWidget {
  @override
  DataPageState createState() => DataPageState();
}

class DataPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.databaseStore;
    Future.delayed(Duration.zero, () async {
      await store.getTable();
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Database',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => store.clear(),
          )
        ],
      ),
      body: Observer(
        name: 'test',
        builder: (_) {
          final items = store?.table;
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items?.length ?? 0,
                  itemBuilder: (context, index) {
                    return data.DataCell(item: items[index]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
