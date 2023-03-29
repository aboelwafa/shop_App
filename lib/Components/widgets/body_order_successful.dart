import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';

import '../styles/colors.dart';

class BodyOrderSuccessful extends StatelessWidget {
  const BodyOrderSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Expanded(child: SizedBox(height: 20,)),
          Center(child: Image.asset('assets/images/Group.png')),
          SizedBox(height: 20,),
          myTitle(text: 'Congratulations!'),
           SizedBox(height: 10,),
           Text(
              'Order Done Successfully and Payment is',
              style: TextStyle(color: MyColors.textSecondary, fontSize: 20),
            ),
               SizedBox(height: 10,),
           Center(
             child: Text(
                ' sent for the product!',
                style: TextStyle(color: MyColors.textSecondary, fontSize: 20),
              ),
           ),
           Expanded(child: SizedBox(height: 30,))
        ],
      ),
    );
  }
}