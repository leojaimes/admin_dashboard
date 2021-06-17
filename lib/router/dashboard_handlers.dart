import 'package:admin_dashboard/features/auth/views/login_view.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:fluro/fluro.dart';

import 'is_auth_widget.dart';

 

class DashboardHandlers {

  static Handler main = Handler(
    handlerFunc: ( context, params ) {
      return isAuthWidget(context!, DashboardView(), LoginView());
      
      
    }
  );

   static Handler icons = Handler(
    handlerFunc: ( context, params ) {

      

      
        return IconsView();
      
    }
  );


  static Handler blank = Handler(
    handlerFunc: ( context, params ) {

      
        return BlankView();
      
    }
  );


}

