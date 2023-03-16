// ignore_for_file: constant_identifier_names, unused_field, depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:shop_app/modules/Home&filter/home_screen.dart';
import 'package:shop_app/modules/LoginScreen/login_screen.dart';
import 'package:shop_app/modules/LoginScreen/sing_in_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/on_boarding_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/splash_screen.dart';

import '../../modules/ForgetPassword/forget_password.dart';
import '../../modules/ForgetPassword/new_password.dart';
import '../../modules/Home&filter/home_layout.dart';

abstract class AppRouter{
  static const String KSplashScreen='/';
  static const String KOnBoardingScreen='/onBoardingScreen';
  static const String KLogingScreen='/LoginScreen';
  static const String KsingInScreen='/SingInScreen';
  static const String KforgetScreen='/ForgetPasswordScreen';
  static const String KresetScreen='/ResetPasswordScreen';
  static const String KHomeScreen='/HomeScreen';
  static const String KHomeLayout='/HomeLayoutScreen';


//HomeLayoutScreen
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
    GoRoute(
      path: KLogingScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: KsingInScreen,
      builder: (context, state) => const SingInScreen(),
    ),
    GoRoute(
      path: KforgetScreen,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: KresetScreen,
      builder: (context, state) => const NewPassword(),
    ),
     GoRoute(
      path: KHomeLayout,
      builder: (context, state) =>  HomeLayoutScreen(),
    ),
    // homescreen
     GoRoute(
      path: KHomeScreen,
      builder: (context, state) =>  HomeScreen(),
    ),
  ],
);
}
// GoRouter configuration
