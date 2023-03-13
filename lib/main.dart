import 'package:flutter/material.dart';
import 'package:shop_app/Components/constants/app_router.dart';

void main() {
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
