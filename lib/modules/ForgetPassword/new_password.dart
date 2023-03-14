import 'package:flutter/material.dart';

import '../../Components/styles/colors.dart';
import '../../Components/widgets/body_new_password.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body:const BodyNewPassword(),
    );
  }
}