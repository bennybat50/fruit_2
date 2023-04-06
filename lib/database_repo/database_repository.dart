import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppConst {
  static const String tableName = 'todoTable';
  static const String id = 'id';
  static const String taskName = 'taskName';
  static const String taskDate = 'taskDate';
  static const String startTime = 'startTime';
  static const String endTime = 'endTime';
  static const String description = 'description';
}

class DatabaseRepository {
  Database? _database;

  static final DatabaseRepository instance = DatabaseRepository._init();
  DatabaseRepository._init();

  Future<Database> get todoDatabase async {
    if (_database != null) return _database!;

    _database = await _initDB('todo_list.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB)
        .whenComplete(() => print(
            "-============Database Connected Successfully=============-"));
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
create table ${AppConst.tableName} ( 
  ${AppConst.id} integer primary key autoincrement, 
  ${AppConst.taskName} text not null,
   ${AppConst.taskDate} text not null,
  ${AppConst.startTime} text not null,
  ${AppConst.endTime} text not null,
  ${AppConst.description} text not null)
''');
  }
}
