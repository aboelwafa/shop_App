import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../../../Components/widgets/custom_google_button.dart';

class LoginSectionOne extends StatelessWidget {
  const LoginSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
              child: Text(
            'LOG IN',
            style: Styles.style22,
          )),
          const SizedBox(
            height: 71,
          ),
          Text(
            'Welcome Back!',
            style: Styles.style24,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter password to get back your account!',
            style: Styles.style21,
          ),
          const SizedBox(height: 20),
          const CustomGoogleButton(),
          const SizedBox(
            height: 42,
          ),
          
      ],
    );
  }
}