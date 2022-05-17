import 'package:todo_list_provider/app/core/database/migratioons/migration.dart';
import 'package:todo_list_provider/app/core/database/migratioons/migration_v1.dart';
import 'package:todo_list_provider/app/core/database/migratioons/migration_v2.dart';

class SqliteMicrationFactory {
  List<Migration> getCreateMigration() => [
    MigrationV1(),
    MigrationV2(),
  ];

  List<Migration> getUpgradeMigration(int version) {
    var migrations = <Migration>[];
    if(version == 1){
      migrations.add(MigrationV2());
    }
    return migrations;
  }
}
