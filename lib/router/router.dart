import 'package:admin_dashboard/router/dashboard_handlers.dart';
import 'package:fluro/fluro.dart';

import 'admin_handlers.dart';
import 'no_page_found_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  // Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // Dashboard
  static String dashboardRoute = '/dashboard';

  static String iconsRoute = '/dashboard/icons';
  static String blankRoute = '/dashboard/blank';



  static void configureRoutes() {
    // Auth Routes
    router..define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none)

    ..define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none)


    ..define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none)

    //
    ..define(dashboardRoute,
        handler: DashboardHandlers.main, transitionType: TransitionType.none)

            ..define( iconsRoute, handler: DashboardHandlers.icons, transitionType: TransitionType.fadeIn );
    ..define( blankRoute, handler: DashboardHandlers.blank, transitionType: TransitionType.fadeIn );


    // 404
    ..notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
