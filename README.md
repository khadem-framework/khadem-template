# Khadem Template

 **Kickstart your next Dart web application with the Khadem Framework 2.0.0**

A production-ready template for building scalable, maintainable server-side applications in Dart. This template provides a solid foundation with MVC architecture, configured tooling, and essential boilerplate code, so you can focus on building features.

> **Note**: This template is compatible with Khadem 2.0.0. If you're upgrading from an earlier version, see the [migration guide](https://khadem-framework.github.io/khadem-docs/migration-guide).

##  Features

- ** MVC Architecture**: robust separation of concerns with Controllers, Models, and Views.
- ** Database Ready**: Integrated ORM with migrations, seeders, and factories.
- ** Multilingual**: Native support for localization (i18n) (Arabic & English supported out-of-the-box).
- ** Async Jobs**: Built-in queue system for background processing and scheduled tasks.
- ** Secure**: Configured middleware for CORS, logging, and request handling.
- ** Extensible**: Easy to extend with Service Providers and custom middleware.

##  Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (version 3.0.0 or higher)
- **Khadem CLI** (Recommended)
  `ash
  dart pub global activate khadem
  `

### Installation

1. **Clone the repository** (or create a new project via CLI):
   `ash
   git clone https://github.com/khadem-framework/khadem-template.git my-app
   cd my-app
   `

2. **Install dependencies**:
   `ash
   dart pub get
   `

3. **Start the server**:
   `ash
   # Using Khadem CLI (Recommended)
   khadem serve

   # Or using standard Dart
   dart run lib/main.dart
   `
   The server will be available at http://localhost:3000.

##  Project Structure

A clean, intuitive structure designed for scalability:

`	ext
lib/
 app/
    events/             # Domain events
    http/
       controllers/    # Request handlers & logic
       middleware/     # Request interceptors
    jobs/               # Background tasks & queues
    listeners/          # Event subscribers
    models/             # Database entities
    observers/          # Database lifecycle hooks
    providers/          # Service injection & setup
 bootstrap/              # Application startup login
 config/                 # Configuration files
 database/
    migrations/         # Schema definitions
    seeders/            # Dummy data generators
 routes/                 # URL definitions
 main.dart               # App entry point
`

##  Usage Guide

### Routing
Define your application routes in lib/routes/web.dart.
`dart
Route.get('/hello', (req) => Response.ok('Hello World!'));
`

### Database & Models
Database logic resides in lib/app/models/. Use migrations to manage your schema:
`ash
khadem migrate
`

### Controllers
Handle business logic in lib/app/http/controllers/.
`dart
class UserController extends Controller {
  Future<Response> index(Request req) async {
    return view('users.index', {'users': await User.all()});
  }
}
`

##  Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to submit changes.

##  License

This project is open-sourced software licensed under the [MIT license](LICENSE).
