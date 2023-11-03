import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Navigation/route_paths.dart';
import '../presentation/FlashScreen/flashscreen.dart';
import '../presentation/dashboard/dashboard.dart';
import '../presentation/loginscreen/loginscreen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // -------------- sub Routes ----------------
      // -------------- splashscreen Route ------------
      case RoutePaths.splashscreen:
        return CupertinoPageRoute(
          builder: (context) => const FlashScreen(),
          settings: const RouteSettings(name: RoutePaths.splashscreen),
        );
      // -------------- Dashboard Route ------------
      case RoutePaths.dashboard:
        return CupertinoPageRoute(
          builder: (context) => const Dashboard(),
          settings: const RouteSettings(name: RoutePaths.dashboard),
        );
      // -------------- Dashboard Route ------------
      case RoutePaths.loginscreen:
        return CupertinoPageRoute(
          builder: (context) => const LoginScreen(),
          settings: const RouteSettings(name: RoutePaths.loginscreen),
        );
      // -------------- Default Route -------------
      default:
        return CupertinoPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
