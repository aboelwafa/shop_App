// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

class BuildListHomeMark extends StatelessWidget {
  const BuildListHomeMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: MyColors.fillcolor,
          child: Text('All',style: TextStyle(
            color: MyColors.black,
            fontSize: 20
          ),),
        ),
        const SizedBox(width: 10,),
        Container(
            width: 100,
            height: 68,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadiusDirectional.circular(50)
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/Vector.png'),width: 50,height: 35,),
              Text('Nike',style: TextStyle(color: MyColors.white,fontSize: 20),)
            ],
          ),
        ),
        const SizedBox(width: 10,),
        CircleAvatar(
          radius: 30,
          backgroundColor: MyColors.fillcolor,
          child: Image(image: AssetImage('assets/images/adidas.png'),width: 50,height: 35,)
        ),
        const SizedBox(width: 10,),
        CircleAvatar(
          radius: 30,
          backgroundColor: MyColors.fillcolor,
          child: Image(image: AssetImage('assets/images/asd.png'),width: 50,height: 35,)
        ),
        
      ],
    );
  }
}