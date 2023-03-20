import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/components/nav_bar.dart';
import '../../Components/widgets/body_details_product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: const BodyDetailsProduct(),
      bottomNavigationBar: const Padding(padding:EdgeInsets.all(10.0),
      child: CustomBottomNavbar(),
      ) ,
    );
  }
}