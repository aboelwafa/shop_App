import 'package:flutter/material.dart';

import '../../Components/styles/colors.dart';
import '../../Components/widgets/body_cart_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: BodyCartScreen(),
    );
  }
}