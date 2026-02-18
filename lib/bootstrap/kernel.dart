import 'package:khadem/contracts.dart'
    show Middleware, MigrationFile, Seeder, ServiceProvider;
import 'package:khadem/khadem.dart' show Khadem;
import 'package:khadem/support.dart'
    show CacheServiceProvider, CoreServiceProvider, CorsMiddleware, DatabaseServiceProvider, DynamicAppUrlMiddleware, LoggingMiddleware, QueueServiceProvider, SetLocaleMiddleware;

import '../app/providers/app_service_provider.dart';
import '../app/providers/event_service_provider.dart';
import '../app/providers/observer_service_provider.dart';
import '../app/providers/scheduler_service_provider.dart';
import '../config/app.dart';
import '../database/migrations/migrations.dart';
import '../database/seeders/seeders.dart';

class Kernel {
  Kernel._();

  /// Core service providers (framework essentials)
  static List<ServiceProvider> get coreProviders => [
        CoreServiceProvider(),
        CacheServiceProvider(),
        QueueServiceProvider(),
        DatabaseServiceProvider(),
        // uncomment the following lines to enable these providers
        // AuthServiceProvider(),
        // MailServiceProvider(),
      ];

  /// Application service providers (user-managed)
  static List<ServiceProvider> get applicationProviders => [
        AppServiceProvider(),
        AppEventServiceProvider(),
        SchedulerServiceProvider(),
        ObserverServiceProvider(),
      ];

  /// All service providers combined
  static List<ServiceProvider> get allProviders => [
        ...coreProviders,
        ...applicationProviders,
      ];

  /// Global HTTP middlewares
  static List<Middleware> get middleware => [
        DynamicAppUrlMiddleware(),
        CorsMiddleware(),
        LoggingMiddleware(),
        SetLocaleMiddleware(),
      ];

  /// Static Dart configuration maps
  static Map<String, Map<String, dynamic>> get configs => AppConfig.configs;

  /// Database migrations
  static List<MigrationFile> get migrations => migrationsFiles;

  /// Database seeders
  static List<Seeder> get seeders => seedersList; 

  /// Bootstrap the application with all service providers
  static Future<void> bootstrap() async {
    // Register application services
    Khadem.register(allProviders);

    // 🔌 Register the config registry (static Dart maps)
    Khadem.loadConfigs(configs);

    // Boot all services
    await Khadem.boot();

    // 📦 Register the DB migrations
    Khadem.migrator.registerAll(migrations);

    // 📦 Register the DB seeders
    Khadem.seeder.registerAll(seeders);
  }
}
