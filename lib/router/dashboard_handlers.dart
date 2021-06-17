import 'package:admin_dashboard/features/auth/views/login_view.dart';
import 'package:admin_dashboard/ui/views/blank_view.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:admin_dashboard/ui/views/icons_view%20copy.dart';
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

      
    return isAuthWidget(context!, IconsView(),  LoginView());
      
         
      
    }
  );


  static Handler blank = Handler(
    handlerFunc: ( context, params ) {

       return isAuthWidget(context!, BlankView(),  LoginView());
    
    }
  );


}

