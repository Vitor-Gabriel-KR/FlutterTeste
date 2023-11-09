import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

part 'drift.g.dart';

class Produtos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  IntColumn get preco => integer()();
  TextColumn get imagem => text()();
  BoolColumn get concluida => boolean()();
}

@DriftDatabase(tables: [Produtos])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
  //
}

DatabaseConnection _openConnection() {
  return DatabaseConnection.delayed(Future(() async {
    final db = await WasmDatabase.open(
      databaseName: 'lista_tarefas',
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.dart.js'),
    );

    if (db.missingFeatures.isNotEmpty) {
      print('error - missing features');
    }
    return db.resolvedExecutor;
  }));
}
