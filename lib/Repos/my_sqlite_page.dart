// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// //import 'package:sqflite/sqflite.dart';

// final _databaseName = "MyDatabase.db";
// final _databaseVersion = 1;
// final table ='My_table';
// final ColumnId = '_id';
// final columnName='name';
// final ColumnAge ='age';

// Database db;

// createDB() async{
//   Directory documentsDirectory = await getApplicationDocumentsDirectory();
//   String path = join(documentsDirectory.path, _databaseName);
//   db = await openDatabase(path,
//         version: _databaseVersion,
//         onCreate: _onCreate);
// }

// Future _onCreate(Database db, int version) async{
//   await db.excute('''
// CREATE TABLE $table(
//   $ColumnId INTEGER PRIMARY KEY,
//   $columnName TEXT NOT NULL,
//   $ColumnAge INTEGER NOT NULL
// )
// ''');
// }

// class Database {
//   excute(String s) {}
// }


// openDatabase(String path, {required int version, required onCreate}) {
// }