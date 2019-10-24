import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_database/app_config.dart';
import 'package:flutter_database/screens/home_page.dart';
import 'package:flutter_database/screens/widgets/amazon_app_bar.dart';
import 'package:flutter_database/screens/widgets/amazon_search.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = AppConfig.of(context).rootStore.shopStore;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: RaisedButton(
          child: Text('Exit'),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ),
          ),
        ),
      ),
      appBar: AmazonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                if (store?.searchHidden ?? true)
                  return Container();
                else
                  return AmazonSearchBar();
              },
            ),
            // Observer(builder: (_) {
            //   return Text(store.table.toString());
            // }),
            Observer(builder: (_) {
              return Wrap(
                children: store.result.map<Widget>((item) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(5)),
                          Image.asset(
                            'assets/${item['image']}',
                            width: 70,
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    item['name'].toString().trim(),
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SmoothStarRating(
                                      allowHalfRating: false,
                                      starCount: 5,
                                      rating: item['rating'].toDouble(),
                                      size: 20.0,
                                      color: Colors.amber,
                                      borderColor: Colors.amber,
                                      spacing: 0.0),
                                  Text(
                                    '\$${item['price'].toString().trim()}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  );
                }).toList(),
              );
            }),
            RaisedButton(
              child: Text('CLEAR'),
              onPressed: () => store.clear(),
            ),
          ],
        ),
      ),
    );
  }
}
