// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/srokeText.dart';
import 'package:shop_app/Components/styles/colors.dart';

class CustomImageOnBoarding extends StatelessWidget {
  const CustomImageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
            alignment: Alignment.bottomCenter,
            children: [
              StrokText(
                  strokeText: 'Nike',
                  strokeSize: 180,
                  strokeWidth: 10,
                  strokeColor: MyColors.gray50,
                  solidText: 'Nike',
                  solidSize: 180,
                  solidColor: MyColors.gray50),
              Positioned(
                top: 30,
                right: 50,
                child: Image.asset(
                  'assets/images/onBoard.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
              )
            ],
          );
  }
}