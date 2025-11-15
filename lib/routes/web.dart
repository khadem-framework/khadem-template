import 'package:khadem/khadem.dart';
import '../app/http/controllers/home_controller.dart';

void registerRoutes(ServerRouter router) {
// ✅ Web routes
  router.get('/', HomeController.welcome);
  router.get('/home', HomeController.index);
  router.get('/stream', HomeController.stream);
}
