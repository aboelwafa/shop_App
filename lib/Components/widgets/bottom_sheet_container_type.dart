import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/container_icons.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class ContainerType extends StatelessWidget {
  const ContainerType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        startTitle(text: 'Type'),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            containerIcon(
              icon: Icons.male,
              border:  Border.all(
                  color: MyColors.primaryColor,
                  width: 2.0,
                ),

            ),
           
              containerIcon(
              icon: Icons.female_outlined,
            ),
              containerIcon(
              icon: Icons.category_outlined,
            ),
              containerIcon(
              icon: Icons.shopping_bag_outlined,
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