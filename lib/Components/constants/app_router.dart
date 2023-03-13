// ignore_for_file: constant_identifier_names, unused_field, depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:shop_app/modules/OnBoardingScreen/on_boarding_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/splash_screen.dart';

abstract class AppRouter{
  static const String KSplashScreen='/';
  static const String KOnBoardingScreen='/onBoardingScreen';
  static final  router = GoRouter(
  routes: [
    GoRoute(
      path: KSplashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: KOnBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
  ],
);
}
// GoRouter configuration
