import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:fluro/fluro.dart';

 

class DashboardHandlers {

  static Handler main = Handler(
    handlerFunc: ( context, params ) {
      return DashboardView();
    }
  );

  /*static Handler register = Handler(
    handlerFunc: ( context, params ) {
      return Container(chi);
    }
  );*/


}

