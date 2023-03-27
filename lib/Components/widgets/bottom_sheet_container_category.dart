import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/container_icons.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class ContainerCategory extends StatelessWidget {
   const ContainerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        startTitle(text: 'Category'),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            containerIcon(
              
              border:  Border.all(
                  color: MyColors.primaryColor,
                  width: 2.0,
                ),
                pathImage: 'assets/images/1.png'

            ),
              containerIcon(
              pathImage: 'assets/images/2.png'
                        ),
              containerIcon(
              
              pathImage: 'assets/images/3.png'
            ),
                containerIcon(
              pathImage: 'assets/images/4.png'
              
            ),
               containerIcon(
              icon: Icons.shopping_bag_outlined,
            ),
          ],
        ),
      ],
    );
  }
}