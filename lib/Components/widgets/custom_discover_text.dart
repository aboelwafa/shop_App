import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';

class CustomDiscoveText extends StatelessWidget {
  const CustomDiscoveText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Discover all trendy shoes',style: TextStyle(
     color: MyColors.white,
     fontSize: 22,
     fontFamily: Styles.kFontfamily,
    ),);
  }
}

