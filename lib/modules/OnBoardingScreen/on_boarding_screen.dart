import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/body_onBoarding_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.white,
      body:const BodyOnBoardingScreen(),
    );
  }
}