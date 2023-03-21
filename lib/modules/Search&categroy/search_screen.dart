import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/widgets/body_search_screen.dart';

class Searchcreen extends StatelessWidget {
  const Searchcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.white,
      body:const BodySearchScreen(),
    );
  }
}