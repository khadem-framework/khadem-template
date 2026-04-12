import 'package:khadem/contracts.dart' show Seeder;

import 'user_seeder.dart';

// Seeder registry - automatically maintained by the seeder generator
List<Seeder> seedersList = <Seeder>[
  // User-related seeders
  UserSeeder(),
];
