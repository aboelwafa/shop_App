// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/constants/bloc_observed.dart';
void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      routerConfig:AppRouter.router
    );
  }
}
