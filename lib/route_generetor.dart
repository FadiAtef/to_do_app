import 'package:flutter/material.dart';
import 'package:to_do_app/page_routs_name.dart';

import 'moduls/layout.dart';
import 'moduls/login/login_view.dart';
import 'moduls/registretion/register_view.dart';
import 'moduls/splash_screen/splash_view.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(
            builder: (context) => const SplashView(), settings: settings);

      case PageRoutesName.login:
        return MaterialPageRoute(
            builder: (context) => const LoginView(), settings: settings);
      case PageRoutesName.registration:
        return MaterialPageRoute(
            builder: (context) => const RegistrationView(), settings: settings);
      case PageRoutesName.layout:
        return MaterialPageRoute(
            builder: (context) => LayoutView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => const SplashView(), settings: settings);
    }
  }
}
