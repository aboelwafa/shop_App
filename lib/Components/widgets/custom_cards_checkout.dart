
import 'package:flutter/material.dart';

import '../components/container_image.dart';
import '../styles/colors.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        myContainerProduct(
            width: 90,
            height: 60,
            child: Image.asset('assets/images/ApplePay.png'),
            backgroundColor: MyColors.fillcolor),
        myContainerProduct(
            width: 90,
            height: 60,
            child: Image.asset('assets/images/visa-logo.png'),
            backgroundColor: MyColors.fillcolor),
        myContainerProduct(
            width: 90,
            height: 60,
            child: Image.asset('assets/images/Mastercard.png'),
            backgroundColor: MyColors.fillcolor),
        myContainerProduct(
            width: 90,
            height: 60,
            child: Icon(
              Icons.add,
              size: 25,
              color: MyColors.textPrimary,
            ),
            backgroundColor: MyColors.fillcolor),
      ],
    );
  }
}
//