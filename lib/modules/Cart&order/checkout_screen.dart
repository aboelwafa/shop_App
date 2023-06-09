import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/widgets/body_checkout_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: BodyCheckoutScreen(),
    );
  }
}