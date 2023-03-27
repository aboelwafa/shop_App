import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../components/container_image.dart';
import '../components/elvated_button.dart';
import '../components/material_button.dart';
import '../styles/colors.dart';
import 'build_list_cart_product.dart';
import 'custom_appbar_discover.dart';

class BodyCartScreen extends StatelessWidget {
  const BodyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbarDiscover(
            title: 'CART',
            iconLead: Icons.arrow_back,
            iconLeadButton: () {
              Navigator.pop(context);
            },
            iconAction: Icons.notifications_none_outlined,
          ),
          SizedBox(
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
          SizedBox(
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
          SizedBox(
            height: 20,
          ),
          BuildListCartProduct(),
          SizedBox(
            height: 15,
          ),
          BuildListCartProduct(),
          SizedBox(
            height: 20,
          ),
          // Do You Have Any Voucher?
        Center(child: infoTitle(text: 'Do You Have Any Voucher?')),
        SizedBox(
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
             Expanded(
               child: SizedBox(
                         height: 25,
                       ),
             ),
                      myButton(backgroundColor: MyColors.primaryColor, 
                      data: 'Checkout', style: Styles.styleButton, onPressed: (){}),

          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
