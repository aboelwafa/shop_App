// ignore_for_file: constant_identifier_names, unused_field, depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:shop_app/modules/LoginScreen/login_screen.dart';
import 'package:shop_app/modules/LoginScreen/sing_in_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/on_boarding_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/splash_screen.dart';

import '../../modules/ForgetPassword/forget_password.dart';
import '../../modules/ForgetPassword/new_password.dart';

abstract class AppRouter{
  static const String KSplashScreen='/';
  static const String KOnBoardingScreen='/onBoardingScreen';
  static const String KLogingScreen='/LoginScreen';
  static const String KsingInScreen='/SingInScreen';
  static const String KforgetScreen='/ForgetPasswordScreen';
  static const String KresetScreen='/ResetPasswordScreen';


//ResetPassword
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
  ],
);
}
// GoRouter configuration
