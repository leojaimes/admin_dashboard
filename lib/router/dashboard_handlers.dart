import 'package:admin_dashboard/features/auth/views/login_view.dart';
import 'package:admin_dashboard/providers/sidebar_controller.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/views/blank_view.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:admin_dashboard/ui/views/icons_view%20copy.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'is_auth_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardHandlers {
  static Handler main = Handler(handlerFunc: (BuildContext? context, params) {
    context!
        .read(sideMenuProviderChangeNotifier)
        .setCurrentPageUrl(Flurorouter.dashboardRoute );

    return isAuthWidget(context, DashboardView(), LoginView());
  });

  static Handler icons = Handler(handlerFunc: (context, params) {

     context!
        .read(sideMenuProviderChangeNotifier)
        .setCurrentPageUrl(Flurorouter.iconsRoute);

    return isAuthWidget(context, IconsView(), LoginView());
  });

  static Handler blank = Handler(handlerFunc: (context, params) {


     context!
        .read(sideMenuProviderChangeNotifier)
        .setCurrentPageUrl(Flurorouter.blankRoute);


    return isAuthWidget(context, BlankView(), LoginView());
  });
}
