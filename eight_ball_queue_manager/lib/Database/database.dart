class DB {
  DB._();
  static final DB instance = DB._();

  String get _players => '''
    CREATE TABLE players (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT
    )
  ''';
}
