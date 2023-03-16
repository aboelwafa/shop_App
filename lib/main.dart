import 'package:flutter/material.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/constants/bloc_observed.dart';
import 'package:bloc/bloc.dart';
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
      theme: ThemeData.light().copyWith(
        
      ),
      routerConfig:AppRouter.router
    );
  }
}
