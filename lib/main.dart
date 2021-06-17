import 'package:admin_dashboard/features/auth/views/login_view.dart';
import 'package:admin_dashboard/router/navigation_service.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:admin_dashboard/ui/layouts/dashboard/dashboard_layout.dart';
import 'package:admin_dashboard/ui/layouts/splash/splash_layout.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:admin_dashboard/ui/views/no_page_found_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/validate_token/logic/validate_token_provider.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      initialRoute: '/',
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        //return AuthLayout(child: child!);
        return Consumer(builder: (_, wacth, __) {
          final validateState = wacth(validateTokenNotifierProvider);
          return validateState.when(
              isValid: (isvalid) {
                if (isvalid) {
                  return DashboardLayout(child: child);
                } else {
                  return AuthLayout(child: child!);
                }
              },
              initial: () => SplashLayout(),
              loading: () => SplashLayout(),
              error: (error) => NoPageFoundView(
                    text: error,
                  ));
        });
      },
    );
  }
}
