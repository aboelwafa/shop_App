import 'package:flutter/material.dart';


import '../../../Components/components/title.dart';

class ForgetSectionOne extends StatelessWidget {
  const ForgetSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         myTitle(text: 'FORGOT PASSWORD'),
          const SizedBox(height: 25,),
          subTitle(text: 'Forgot your Password?'),
          const SizedBox(height: 14,),
          miSubTitle(text: 'Enter email address well send you an email'),
           const SizedBox(height: 40,),
      ],
    );
  }
}