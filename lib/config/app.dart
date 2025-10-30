import 'package:khadem/khadem.dart' show Khadem;

// Import individual config files
import 'auth.dart';
import 'cache.dart';
import 'cors.dart';
import 'mail.dart';
import 'queue.dart';
import 'scheduler.dart';
import 'storage.dart';

class AppConfig {
  static final env = Khadem.env;

  /// 🌱 Default configuration
  /// All configurations are now modularized in separate files
  static Map<String, Map<String, dynamic>> get configs => {
        /// Application configuration
        'app': {
          'url': env.getOrDefault('APP_URL', 'http://localhost:9000'),
          'asset_url': env.get('ASSET_URL'),
          'name': env.getOrDefault('APP_NAME', 'Khadem Video Streaming'),
          'port': env.getInt('APP_PORT', defaultValue: 3000),
        },

        /// Database configuration
        /// See: lib/config/database.dart
        // 'database': DatabaseConfig.config,

        /// Cache configuration
        /// See: lib/config/cache.dart
        'cache': CacheConfig.config,

        /// Queue configuration
        /// See: lib/config/queue.dart
        'queue': QueueConfig.config,

        /// Auth configuration
        /// See: lib/config/auth.dart
        'auth': AuthConfig.config,

        /// Storage configuration
        /// See: lib/config/storage.dart
        'storage': StorageConfig.config,

        /// Scheduler configuration
        /// See: lib/config/scheduler.dart
        'scheduler': SchedulerConfig.config,

        /// Mail configuration
        /// See: lib/config/mail.dart
        'mail': MailConfig.config,

        /// CORS configuration
        /// See: lib/config/cors.dart
        'cors': CorsConfig.config,
      };
}
