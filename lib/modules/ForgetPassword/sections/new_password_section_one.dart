import 'package:flutter/material.dart';

import '../../../Components/components/title.dart';

class NewpasswordSectionOne extends StatelessWidget {
  const NewpasswordSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTitle(text: 'FORGOT PASSWORD'),
          const SizedBox(height: 25,),
          subTitle(text: 'Reset Password'),
          const SizedBox(height: 14,),
          miSubTitle(text: 'Keep a password to easily login to your account'),
           const SizedBox(height: 40,),
      ],
    );
  }
}
