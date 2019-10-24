import 'dart:io' as io;

import 'package:flutter_database/stores/root_store.dart';
import 'package:mobx/mobx.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

part 'shop_store.g.dart';

class ShopStore = _ShopStore with _$ShopStore;

abstract class _ShopStore with Store {
  _ShopStore({this.rootStore});

  RootStore rootStore;

  @observable
  List<Map<String, dynamic>> result = List<Map<String, dynamic>>();

  @observable
  String query = '';

  @observable
  String name = '';

  @observable
  int price = 0;

  @observable
  bool searchHidden = true;

  @observable
  List<Map<String, dynamic>> table = List<Map<String, dynamic>>();

  @observable
  bool isSignup = false;

  Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

// Queries

  @action
  Future<void> search() async {
    query = "SELECT * FROM Products WHERE name like '%$name%'";
    final dbClient = await db;
    await sqlExecute(query);
    result = await dbClient.rawQuery(query);
  }

  Future<void> deleteAllProducts() async {
    var dbClient = await db;
    await dbClient.execute('DELETE FROM Products');
  }

  @action
  Future<void> getTable() async {
    query = "SELECT * FROM Products";
    final dbClient = await db;
    result = await dbClient.rawQuery(query);
  }

// Database Setup

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "shop.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE Products(name TEXT, price INTEGER, rating INTEGER, image TEXT)");
  }

  Future<void> sqlExecute(String query) async {
    final dbClient = await db;
    var queries = query.split(';');
    for (String q in queries) {
      await dbClient.execute(q);
    }
  }

// Miscellaneous

  @action
  void toggleSearch() {
    searchHidden = !searchHidden;
  }

  @action
  Future<void> addItems() async {
    final dbClient = await db;
    await dbClient.insert("Products", {
      'name': 'Yeezys',
      'price': 250,
      'rating': 4.8,
      'image': 'yeezy.png',
    });
    await dbClient.insert("Products", {
      'name': 'R2-D2 App-Enabled Droid',
      'price': 48,
      'rating': 2,
      'image': 'r2d2.jpg',
    });
    await dbClient.insert("Products", {
      'name': 'Addidas Ultra Boost',
      'price': 180,
      'rating': 4.0,
      'image': 'addidas.png'
    });
    await dbClient.insert("Products", {
      'name': 'Ray-Ban RB3548N HEXAGONAL Sunglasses',
      'price': 153,
      'rating': 4.4,
      'image': 'rayban.jpg',
    });
    await dbClient.insert("Products", {
      'name':
          'Modoker Vintage Laptop Backpack for Women Men, School College Backpack ',
      'price': 25,
      'rating': 3.2,
      'image': 'backpack.jpg',
    });
  }

  @action
  void clear() {
    result = List<Map<String, dynamic>>();
    query = '';
    name = '';
    price = 0;
    isSignup = false;
    table = List<Map<String, dynamic>>();
    deleteAllProducts();
  }
}
