import 'package:khadem/contracts.dart' show MigrationFile;

import '0_create_personal_access_token_table.dart';
import '0_create_users_table.dart';

List<MigrationFile> migrationsFiles = <MigrationFile>[
  CreatePersonalAccessTokenTable(),
  CreateUsersTable(),
];
