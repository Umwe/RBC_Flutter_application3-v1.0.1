import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/conversion_output_screen/conversion_output_screen.dart';
import '../presentation/login_screen/login_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String conversionOutputScreen = '/conversion_output_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    conversionOutputScreen: (context) => ConversionOutputScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginScreen()
  };
}
