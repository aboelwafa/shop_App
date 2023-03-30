import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import 'widgets_profile/body_settings_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: MyColors.white,
      body:const BodySettingsScreen(),
    );
  }
}