import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/srokeText.dart';
import 'package:shop_app/Components/styles/colors.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  StrokText(
        strokeText: 'FLIP',
         strokeSize: 60,
          strokeWidth: 4, 
          strokeColor: MyColors.black,
           solidText: 'FLIP',
            solidSize: 60, 
            solidColor: MyColors.white)
      
    );
  }
}
// 