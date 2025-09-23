# Khadem Dart Template

A Dart web server template built with the Khadem framework, featuring MVC architecture, database migrations, job scheduling, and multilingual support. Perfect for kickstarting scalable web applications.

## Features

- **MVC Architecture**: Organized structure with controllers, models, views, and routes.
- **Database Support**: Built-in migrations and seeders for easy database setup.
- **Job Scheduling**: Background jobs and event listeners for asynchronous tasks.
- **Multilingual**: Support for Arabic and English translations.
- **Middleware**: CORS and other HTTP middleware for secure APIs.
- **Logging**: Configurable logging for development and production.

## Getting Started

### Prerequisites

- Dart SDK (>=3.0.0)
- Khadem CLI (install via `dart pub global activate khadem`)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/khadem-framework/khadem-template.git
   cd YOUR_REPO_NAME
   ```

2. Install dependencies:
   ```bash
   dart pub get
   ```

3. Run the server:
   ```bash
   khadem serve
   ```

The server will start on `http://localhost:3000` (or your configured port).

### Project Structure

```
lib/
├── app/
│   ├── http/
│   │   ├── controllers/    # Request handlers
│   │   └── middleware/     # HTTP middleware
│   ├── jobs/               # Background jobs
│   ├── listeners/          # Event listeners
│   ├── models/             # Data models
│   └── providers/          # Service providers
├── config/                 # App configuration
├── core/                   # Core framework files
├── database/
│   ├── migrations/         # Database migrations
│   └── seeders/            # Data seeders
├── routes/                 # Route definitions
└── main.dart               # Entry point

config/                     # Environment configs
lang/                       # Translations
public/                     # Static assets
resources/views/            # Templates
storage/logs/               # Logs
tests/                      # Unit tests
```

## Usage

- **Controllers**: Handle HTTP requests in `lib/app/http/controllers/`.
- **Models**: Define data structures in `lib/app/models/`.
- **Routes**: Configure endpoints in `lib/routes/web.dart` or `lib/routes/socket.dart`.
- **Migrations**: Run `khadem migrate` to apply database changes.
- **Jobs**: Schedule tasks in `lib/app/jobs/`.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.