import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:fluro/fluro.dart';

import 'package:admin_dashboard/features/auth/views/login_view.dart';
import 'package:admin_dashboard/features/register/views/register_view.dart';

import 'package:flutter/material.dart';


import 'is_auth_widget.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (BuildContext? context, params) {
    return isAuthWidget(context!, DashboardView(), LoginView());
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    return isAuthWidget(context!, DashboardView(), RegisterView());
  });
}

