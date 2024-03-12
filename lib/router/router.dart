import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    // Stateful Counter
    router.define('/', handler: counterHandler, transitionType: TransitionType.none);
    router.define('/stateful', handler: counterHandler, transitionType: TransitionType.none);
    router.define('/stateful/:base', handler: counterHandler, transitionType: TransitionType.none);

    // Provider Counter
    router.define('/provider', handler: providerHandler, transitionType: TransitionType.none);
    router.define('/provider/:base', handler: providerHandler, transitionType: TransitionType.none);

    // 404
    router.define('/dashboard/users/:userid/:roleid', handler: dashboarduserHandler, transitionType: TransitionType.none);
    router.notFoundHandler = pageNotFound;
  }
}
