import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/elvated_button.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class HeaderDraw extends StatelessWidget {
  const HeaderDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      myElevatedButton(
                        borderSideColor: MyColors.fillcolor,
                          backgroundColor: MyColors.white,
                          colorIcon: MyColors.textPrimary,
                          sizeIcon: 25,
                          icon: Icons.arrow_back,
                          onPressed: (){}
                        ),
                         const SizedBox(width: 100,),
                          myTitle(text: 'MENU'),
                    ],
                  );
  }
}