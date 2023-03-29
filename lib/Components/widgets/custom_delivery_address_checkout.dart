
import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../components/container_image.dart';
import '../components/title.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        startTitle(text: 'Delivery address'),
        const SizedBox(height: 20,),
        Row(
          children: [
             myContainerProduct(
                      height: 85,
                      width: 85,
                      child: Image.asset('assets/images/Group 18160.png'),
                      backgroundColor: MyColors.fillcolor),
                  
                  const SizedBox(
                    width: 20,
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      startTitle(text: 'Home address'),
                      const SizedBox(
                        height: 10,
                      ),
                      //'Toodely Benson Allentown, New Mexico 31134.',
                     Text(
                        'Toodely Benson Allentown\n New Mexico 31134.',
                        style: TextStyle(
                          color: MyColors.grayText,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),),
                  
                   
                    ],
                  )
                ,
                const Spacer(),
                Icon(Icons.edit,size: 25,color: MyColors.textPrimary,)
          ],
        )
      ],
    );
  }
}

// 