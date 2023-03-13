// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/srokeText.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/image_onBoarding.dart';

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
            'Enjoy your vacation with our super comfy shoes',
            style: TextStyle(color: MyColors.thirdColor, fontSize: 22),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: MyColors.primaryColor,
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(color: MyColors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
