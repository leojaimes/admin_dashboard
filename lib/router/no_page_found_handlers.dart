import 'package:admin_dashboard/providers/sidebar_controller.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:fluro/fluro.dart';
import 'package:admin_dashboard/ui/views/no_page_found_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    context!
        .read(sideMenuProviderChangeNotifier)
        .setCurrentPageUrl('/404');

    return NoPageFoundView();
  }); 
}
