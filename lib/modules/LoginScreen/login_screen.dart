import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/custom_login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.white,
      body:const LoginBody(),
    );
  }
}