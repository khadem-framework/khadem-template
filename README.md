# Khadem Template

**Kickstart your next Dart web application with the Khadem Framework 2.0.0**

A production-ready template for building scalable, maintainable server-side applications in Dart. Provides a solid foundation with MVC architecture, configured tooling, and essential boilerplate code.

> **Note**: This template is for Khadem 2.0.0. See the [documentation](https://khadem-framework.github.io/khadem-docs/) for more info.

## 🚀 Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (version 3.0.0 or higher)

### Installation

The recommended way to start a new Khadem project is using the CLI:

```bash
# Install the Khadem CLI globally
dart pub global activate khadem

# Create a new project
khadem new --name=my_app
cd my_app

# Start the development server
khadem serve
```

Your server will be available at `http://localhost:9000`.

## 📁 Project Structure

```text
lib/
  app/
    events/             # Domain events
    http/
       controllers/     # Request handlers & logic
       middleware/      # Request interceptors
    jobs/               # Background tasks & queues
    listeners/          # Event subscribers
    models/             # Database entities
    observers/          # Database lifecycle hooks
    providers/          # Service injection & setup
  bootstrap/            # Application startup logic
  config/               # Configuration files
  database/
    migrations/         # Schema definitions
    seeders/            # Dummy data generators
  routes/               # URL definitions (web.dart, api.dart)
  main.dart             # App entry point
```

## 📚 Learn More

For full documentation regarding routing, database ORM, controllers, and services, please visit our **[Official Documentation](https://khadem-framework.github.io/khadem-docs/)**.

## 📄 License

This project is open-sourced software licensed under the [MIT license](LICENSE).
