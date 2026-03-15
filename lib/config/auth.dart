import 'package:khadem/khadem.dart' show Khadem;

class AuthConfig {
  static final env = Khadem.env;

  static Map<String, dynamic> get config => {
        /*
        |--------------------------------------------------------------------------
        | Authentication Defaults
        |--------------------------------------------------------------------------
        |
        | Controls the default guard and provider used by AuthManager.
        |
        */
        'defaults': {
          'guard': env.getOrDefault('AUTH_GUARD', 'api'),
          'provider': env.getOrDefault('AUTH_PROVIDER', 'users'),
        },

        /*
        |--------------------------------------------------------------------------
        | Authentication Guards
        |--------------------------------------------------------------------------
        |
        | Supported drivers: "jwt", "token"
        |
        */
        'guards': {
          'web': {
            'driver': 'token',
            'provider': 'users',
          },
          'api': {
            'driver': 'jwt',
            'provider': 'users',
          },
          'admin_api': {
            'driver': 'jwt',
            'provider': 'admins',
          },
        },

        /*
        |--------------------------------------------------------------------------
        | Driver Defaults
        |--------------------------------------------------------------------------
        |
        | Driver options consumed by drivers:
        | - jwt_secret
        | - access_token_expiry (seconds)
        | - refresh_token_expiry (seconds)
        |
        */
        'drivers': {
          'jwt': {
            'jwt_secret': env.getOrDefault('JWT_SECRET', 'default-secret-key'),
            'access_token_expiry': env.getInt(
              'JWT_ACCESS_EXPIRY_SECONDS',
              defaultValue:
                  env.getInt('ACCESS_TOKEN_EXPIRY', defaultValue: 3600),
            ),
            'refresh_token_expiry': env.getInt(
              'JWT_REFRESH_EXPIRY_SECONDS',
              defaultValue:
                  env.getInt('REFRESH_TOKEN_EXPIRY', defaultValue: 2592000),
            ),
          },
          'token': {
            'access_token_expiry': env.getInt(
              'TOKEN_ACCESS_EXPIRY_SECONDS',
              defaultValue:
                  env.getInt('ACCESS_TOKEN_EXPIRY', defaultValue: 3600),
            ),
            'refresh_token_expiry': env.getInt(
              'TOKEN_REFRESH_EXPIRY_SECONDS',
              defaultValue:
                  env.getInt('REFRESH_TOKEN_EXPIRY', defaultValue: 2592000),
            ),
          },
        },

        /*
        |--------------------------------------------------------------------------
        | Authentication Providers
        |--------------------------------------------------------------------------
        |
        | Provider options consumed by drivers:
        | - jwt_secret
        | - access_token_expiry (seconds)
        | - refresh_token_expiry (seconds)
        |
        */
        'providers': {
          'users': {
            'model': 'User',
            'table': 'users',
            'primary_key': 'id',
            'fields': ['email'],
          },
          'admins': {
            'model': 'Admin',
            'table': 'admins',
            'primary_key': 'id',
            'fields': ['email'],
          },
        },
      };
}
