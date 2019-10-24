import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AmazonSearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AmazonSearchBarState();
}

class AmazonSearchBarState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.shopStore;
    return Container(
      color: Colors.cyan,
      child: Observer(
        builder: (_) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    style: TextStyle(fontSize: 14),
                    autofocus: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.cyan,
                        ),
                        onPressed: () => store.search(),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'What are you looking for?',
                      contentPadding: const EdgeInsets.all(15),
                    ),
                    onChanged: (t) => store.name = t,
                    onSubmitted: (t) => store.search(),
                  ),
                ),
              ),
              if (store.name == null || store.name == "")
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  color: Colors.white,
                  onPressed: () {},
                ),
              if (store.name == null || store.name == "")
                IconButton(
                  icon: Icon(Icons.mic),
                  color: Colors.white,
                  onPressed: () {},
                )
            ],
          );
        },
      ),
    );
  }
}
