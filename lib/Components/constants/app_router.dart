// ignore_for_file: constant_identifier_names, unused_field, depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:shop_app/modules/Home&filter/details_screen.dart';
import 'package:shop_app/modules/Home&filter/discover_screen.dart';
import 'package:shop_app/modules/Home&filter/home_screen.dart';
import 'package:shop_app/modules/LoginScreen/login_screen.dart';
import 'package:shop_app/modules/LoginScreen/sing_in_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/on_boarding_screen.dart';
import 'package:shop_app/modules/OnBoardingScreen/splash_screen.dart';
import 'package:shop_app/modules/Search&categroy/search_screen.dart';

import '../../modules/Cart&order/cart_screen.dart';
import '../../modules/Cart&order/checkout_screen.dart';
import '../../modules/Cart&order/order_successful.dart';
import '../../modules/ForgetPassword/forget_password.dart';
import '../../modules/ForgetPassword/new_password.dart';
import '../../modules/Home&filter/home_layout.dart';
import '../../modules/Search&categroy/category_screen.dart';

abstract class AppRouter{
  static const String KSplashScreen='/';
  static const String KOnBoardingScreen='/onBoardingScreen';
  static const String KLogingScreen='/LoginScreen';
  static const String KsingInScreen='/SingInScreen';
  static const String KforgetScreen='/ForgetPasswordScreen';
  static const String KresetScreen='/ResetPasswordScreen';
  static const String KHomeScreen='/HomeScreen';
  static const String KHomeLayout='/HomeLayoutScreen';
  static const String KDetailsScreen='/DetailsScreen';
  static const String KDiscoverScreen='/DiscoverScreen';
static const String KSearchScreen='/Searchcreen';
  static const String KCategoryScreen='/CategoryScreen';
  static const String KCartScreen='/CartScreen';
    static const String KCheckoutScreen='/CheckoutScreen';
 static const String KOrderSuccessful='/OrderSuccessful';

//OrderSuccessful
  static final  router = GoRouter(
  routes: [
     GoRoute(
      path: KOrderSuccessful,
      builder: (context, state) => const OrderSuccessful(),
    ),
     GoRoute(
      path: KCheckoutScreen,
      builder: (context, state) => const CheckoutScreen(),
    ),
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
      builder: (context, state) =>  const HomeLayoutScreen(),
    ),
    // homescreen
     GoRoute(
      path: KHomeScreen,
      builder: (context, state) =>  const HomeScreen(),
    ),
    // detail
      GoRoute(
      path: KDetailsScreen,
      builder: (context, state) => const DetailsScreen(),
    ),
      GoRoute(
      path: KDiscoverScreen,
      builder: (context, state) => const DiscoverScreen(),
    ),
        GoRoute(
      path: KCategoryScreen,
      builder: (context, state) => const CategoryScreen(),
    ),
      GoRoute(
      path: KSearchScreen,
      builder: (context, state) => const Searchcreen(),
    ),
      GoRoute(
      path: KCartScreen,
      builder: (context, state) => const CartScreen(),
    ),
  ],
);
}
// GoRouter configuration
