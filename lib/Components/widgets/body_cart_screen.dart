import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/navigator.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../components/material_button.dart';
import '../styles/colors.dart';
import 'build_list_cart_product.dart';
import 'custom_app_bar.dart';

class BodyCartScreen extends StatelessWidget {
  const BodyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbarRow(context,text: 'CART'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Your Cart  ',
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
            'List(2)',
            style: TextStyle(
              color: MyColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const BuildListCartProduct(),
          const SizedBox(
            height: 15,
          ),
          const BuildListCartProduct(),
          const SizedBox(
            height: 20,
          ),
          // Do You Have Any Voucher?
        Center(child: infoTitle(text: 'Do You Have Any Voucher?')),
        const SizedBox(
            height: 20,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            infoTitle(text: 'Total'),
            Text(
                        'USD 1375',
                        style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
               
          ],
        ),
             const Expanded(
               child: SizedBox(
                         height: 25,
                       ),
             ),
                      myButton(backgroundColor: MyColors.primaryColor, 
                      data: 'Checkout', style: Styles.styleButton, onPressed: (){
                        navigatorPush(context, pathAppRouter: AppRouter.KCheckoutScreen);
                      }),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

 
}
