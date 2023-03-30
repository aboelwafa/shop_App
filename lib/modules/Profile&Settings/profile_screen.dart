import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/modules/Profile&Settings/widgets_profile/body_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: BodyProfileScreen(),
    );
  }
}