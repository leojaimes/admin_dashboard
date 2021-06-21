import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  ///
  static navigateTo(String routeName) {
    print(routeName);
    //print(navigatorKey.currentState);
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  static replaceTo(String routeName) {
    print(routeName);
    //print(navigatorKey.currentState);
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
}
