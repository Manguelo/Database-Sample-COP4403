import 'dart:io' as io;

import 'package:flutter_database/stores/root_store.dart';
import 'package:mobx/mobx.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

part 'database_store.g.dart';

class DatabaseStore = _DatabaseStore with _$DatabaseStore;

abstract class _DatabaseStore with Store {
  _DatabaseStore({this.rootStore});

  RootStore rootStore;

  @observable
  String result = '';

  @observable
  String query = '';

  @observable
  String email = '';

  @observable
  String password = '';

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
  Future<void> login() async {
    query =
        "SELECT * FROM User WHERE email = '$email' AND password = '$password'";
    final dbClient = await db;
    await sqlExecute(query);
    result = (await dbClient.rawQuery(query)).toString();
  }

  Future<int> saveUser(String email, String password) async {
    var dbClient = await db;
    int res =
        await dbClient.insert("User", {'email': email, 'password': password});
    print(res);
    return res;
  }

  Future<void> deleteAllUsers() async {
    var dbClient = await db;
    await dbClient.execute('DELETE FROM User');
  }

  @action
  Future<void> getTable() async {
    query = "SELECT * FROM User";
    final dbClient = await db;
    table = await dbClient.rawQuery(query);
  }

// Database Setup

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "master.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE User(email TEXT, password TEXT)");
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
  void switchMode() {
    isSignup = !isSignup;
  }

  @action
  Future<void> mainButtonAction() async {
    if (isSignup) {
      await saveUser(email, password);
    } else {
      await login();
    }
  }

  @action
  void clear() {
    result = '';
    query = '';
    email = '';
    password = '';
    isSignup = false;
    table = List<Map<String, dynamic>>();
    deleteAllUsers();
  }
}
