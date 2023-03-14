import 'package:flutter/material.dart';

import '../../../Components/components/title.dart';
import '../../../Components/widgets/custom_google_button.dart';

class LoginSectionOne extends StatelessWidget {
  const LoginSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         myTitle(text: 'LOG IN'), 
          const SizedBox(
            height: 71,
          ),
         subTitle(text: 'Welcome Back!'),
          const SizedBox(
            height: 20,
          ),
          miSubTitle(text:  'Enter password to get back your account!'),
          const SizedBox(height: 20),
          const CustomGoogleButton(),
          const SizedBox(
            height: 42,
          ),
          
      ],
    );
  }
}