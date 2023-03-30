import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/container_image.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../components/material_button.dart';
import '../components/navigator.dart';
import '../constants/app_router.dart';
import '../styles/colors.dart';
import 'custom_app_bar.dart';
import 'custom_appbar_discover.dart';
import 'custom_cards_checkout.dart';
import 'custom_delivery_address_checkout.dart';
import 'custom_subtotal_checkout.dart';

class BodyCheckoutScreen extends StatelessWidget {
  const BodyCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           appbarRow(context,text: 'CHECKOUT'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Choose a Payment',
            style: TextStyle(
              color: MyColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Method',
            style: TextStyle(
              color: MyColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Cards(),
          const SizedBox(
            height: 45,
          ),
          const DeliveryAddress(),
            const SizedBox(
            height: 45,
          ),
          const SubTotal(),
   const Expanded(
     child: SizedBox(
              height: 20,
            ),
   ),
           myButton(backgroundColor: MyColors.primaryColor, 
                      data: 'Pay Now', style: Styles.styleButton, onPressed: (){
                        navigatorPush(context, pathAppRouter: AppRouter.KOrderSuccessful);
                      }),
                       const Expanded(
     child: SizedBox(
              height: 20,
            ),
   ),
        ],
      ),
    );
  }
}