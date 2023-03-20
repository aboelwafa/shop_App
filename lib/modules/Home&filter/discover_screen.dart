import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/widgets/body_discover_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: BodyDisoverScreen(),
    );
  }
}