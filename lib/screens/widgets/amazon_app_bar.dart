import 'package:flutter/material.dart';
import 'package:flutter_database/app_config.dart';

class AmazonAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  AppBar build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.shopStore;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.cyan,
      title: Row(
        children: <Widget>[
          Image.asset(
            'assets/amazon_logo.png',
            height: 30,
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () => store.toggleSearch(),
        ),
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: () => store.addItems(),
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
