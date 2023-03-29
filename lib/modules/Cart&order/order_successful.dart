import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/widgets/body_order_successful.dart';

class OrderSuccessful extends StatelessWidget {
  const OrderSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body:BodyOrderSuccessful() ,
    );
  }
}