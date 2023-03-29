// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/srokeText.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/image_onBoarding.dart';
import 'package:go_router/go_router.dart';

import '../components/material_button.dart';
import '../styles/styles.dart';
class BodyOnBoardingScreen extends StatelessWidget {
  const BodyOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 47, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const CustomImageOnBoarding(),
          const SizedBox(
            height: 20,
          ),
          StrokText(
              FontStyle: FontStyle.normal,
              strokeText: 'The',
              strokeSize: 70,
              strokeWidth: 3,
              strokeColor: MyColors.textPrimary,
              solidText: 'The',
              solidSize: 70,
              solidColor: MyColors.white),
          const SizedBox(
            height: 10,
          ),
          StrokText(
              FontStyle: FontStyle.normal,
              strokeText: 'Awosome',
              strokeSize: 50,
              strokeWidth: 3,
              strokeColor: MyColors.textPrimary,
              solidText: 'Awosome',
              solidSize: 50,
              solidColor: MyColors.textPrimary),
          const SizedBox(
            height: 10,
          ),
          StrokText(
              FontStyle: FontStyle.normal,
              strokeText: 'Branded',
              strokeSize: 50,
              strokeWidth: 3,
              strokeColor: MyColors.textPrimary,
              solidText: 'Branded',
              solidSize: 50,
              solidColor: MyColors.white),
          const SizedBox(
            height: 10,
          ),
          StrokText(
              FontStyle: FontStyle.normal,
              strokeText: 'shoes',
              strokeSize: 50,
              strokeWidth: 3,
              strokeColor: MyColors.textPrimary,
              solidText: 'shoes',
              solidSize: 50,
              solidColor: MyColors.textPrimary),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enjoy your vacation with our super comfort shoes',
            style: TextStyle(color: MyColors.textSecondary, fontSize: 22),
          ),
          const Spacer(),
          myButton(
             backgroundColor: MyColors.primaryColor,
              data: 'Get Started',
             style:Styles.styleButton,
             onPressed: (){
              GoRouter.of(context).push(AppRouter.KLogingScreen);
             }
          ),     
        ],
      ),
    );
  }
}
