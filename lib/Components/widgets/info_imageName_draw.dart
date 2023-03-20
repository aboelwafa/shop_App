// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class InfoImageName extends StatelessWidget {
  const InfoImageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/alexendre.png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            subTitle(text: 'Alexendre Hussain'),
             
             TextButton(onPressed: (){}, child: Text('Edit Profile',style: TextStyle(
              color: MyColors.textSecondary,
              fontSize: 17,
             ),))

          ],
        ),
      ],
    );
  }
}