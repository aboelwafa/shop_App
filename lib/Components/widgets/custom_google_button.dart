// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop_app/Components/styles/styles.dart';
class CustomGoogleButton extends StatelessWidget {
  const CustomGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: HexColor('E5E5E5').withOpacity(0.9),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 6), // changes position of shadow
                ),
              ],
              color: MyColors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Image.asset(
                  'assets/images/google.png',
                  height: 60,
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  'Continue with Google',
                  style: Styles.w40018,
                ),
                const SizedBox(
                  width: 40,
                )
              ],
            ),
          );
  }
}