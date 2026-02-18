import 'package:khadem/http.dart' show Request, Response;

class HomeController {
  HomeController._();

  /// Renders the home page via Khedr.
  static Future<void> home(Request req, Response res) async {
    res.jsonPretty('Welcome to Khadem Framework!');
  }

  /// Legacy welcome view (template-based).
  static Future<void> welcome(Request req, Response res) async {
    await res.view('welcome');
  }

  static Future<void> stream(Request req, Response res) async {
    await res.stream<String>(
      Stream.periodic(const Duration(milliseconds: 500), (i) => "Line $i\n")
          .take(10),
    );
  }
}
