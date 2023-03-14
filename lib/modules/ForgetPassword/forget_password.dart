import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/widgets/body_forget_pass.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body:const BodyForgetPassword(),
    );
  }
}