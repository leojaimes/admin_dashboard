 
import 'package:admin_dashboard/router/navigation_service.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      navigatorKey: NavigationService.navigatorKey ,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return AuthLayout(child: child!);
      },
    );
  }
}
