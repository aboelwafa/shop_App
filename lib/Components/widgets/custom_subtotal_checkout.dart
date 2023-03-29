
import 'package:flutter/material.dart';

import '../components/title.dart';
import '../styles/colors.dart';
import '../styles/styles.dart';

class SubTotal extends StatelessWidget {
  const SubTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text('Subtotal',style: Styles.grayText.copyWith(fontWeight: FontWeight.w400),),
              startTitle(text: 'USD 1375'),
          ],
        ),
       const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text('Shipin cost',style: Styles.grayText.copyWith(fontWeight: FontWeight.w400),),
              startTitle(text: 'USD 80'),
          ],
        ),
       const SizedBox(height: 15,),
        Container(width: double.infinity,
        height: 5,
        color: MyColors.fillcolor,
        ),
         const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text('Total',style: Styles.grayText.copyWith(fontWeight: FontWeight.w400),),
              startTitle(text: 'USD 1455'),
          ],
        ),
      ],
    );
  }
}

// 