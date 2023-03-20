// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/body_draw_header.dart';
import 'package:shop_app/Components/widgets/header_draw.dart';
import 'package:shop_app/Components/widgets/info_imageName_draw.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      width: size.width/1.2,
    
      elevation: 0.0,
      backgroundColor: MyColors.white,
      child:ListView(
        
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const [
                  HeaderDraw(),
                   SizedBox(height: 40,),
                   InfoImageName(),
                  SizedBox(height: 30,),
                 BodyDrawHeader(),
                   

                   ],
                   
                   ),
          ),
            ],
            ),
            );
  }
}