import 'package:khadem/routing.dart' show Router;
import '../app/http/controllers/home_controller.dart';

void registerRoutes(Router router) {
  router.get('/', HomeController.home);
  router.get('/welcome', HomeController.welcome);
  router.get('/stream', HomeController.stream);
}
