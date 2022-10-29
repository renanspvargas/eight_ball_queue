import 'package:eight_ball_queue_manager/imports.dart';

class DB {
  DB._();
  static final DB instance = DB._();
  static Database? _database;

  final _databaseName = 'queue.db';

  get database async {
    if (_database != null) return _database;
    return await _initDatabase();
  }

  _initDatabase() async {
    sqfliteFfiInit();
    String databasePath = await databaseFactoryFfi.getDatabasesPath();
    String path = join(databasePath, _databaseName);
    print(path);
    DatabaseFactory databaseFactory = databaseFactoryFfi;
    return await databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        onCreate: _onCreate,
        version: 1,
      ),
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_players);
  }

  String get _players => '''
    CREATE TABLE players (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT
    )
  ''';
}
