import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/login.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/registerscreen.dart';

import '../screens/shared/splash.dart';
import '../screens/user/homeview.dart';


class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
        case "/":
        return MaterialPageRoute(builder: (_) => splash());
        case "/login":
        return MaterialPageRoute(builder: (_) => login());
        case "/homeview":
        //return MaterialPageRoute(builder: (_) => homeview( a1));
        case "/register":
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return null;
    }
  }
}