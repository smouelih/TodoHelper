// ignore_for_file: depend_on_referenced_packages

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'steve.db');
    Database mydb = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return mydb;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE tasks (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      note TEXT,
      date TEXT,
      startTime TEXT,
      endTime TEXT,
      remind INTEGER, 
      repeat TEXT,
      color INTEGER,
      isCompleted INTEGER
    )
    ''');
  }

  readData(String sql) async {
    Database? mydb = await db;
    List<Map> res = await mydb!.rawQuery(sql);
    return res;
  }

  insertData(String sql) async {
    Database? mydb = await db;
    int res = await mydb!.rawInsert(sql);
    return res;
  }

  updateData(String sql) async {
    Database? mydb = await db;
    int res = await mydb!.rawUpdate(sql);
    return res;
  }

  deleteData(String sql) async {
    Database? mydb = await db;
    int res = await mydb!.rawDelete(sql);
    return res;
  }
}
