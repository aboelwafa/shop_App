// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop_app/Components/components/srokeText.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/custom_discover_text.dart';
import 'package:shop_app/Components/widgets/final_text_splash.dart';
import 'package:shop_app/Components/widgets/flib_text.dart';
import '../../Components/styles/styles.dart';
import 'package:go_router/go_router.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
    navigateToOnBoarding();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#69BCFC'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          const CustomMainText(),
          const SizedBox(
            height: 14,
          ),
          const CustomDiscoveText(),
          const Spacer(
            flex: 3,
          ),
          finalText(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void navigateToOnBoarding()
  {
    Future.delayed(const Duration(seconds: 2),() {
      GoRouter.of(context).push(AppRouter.KOnBoardingScreen);
    },);

  }
}
