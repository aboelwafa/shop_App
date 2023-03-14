// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../modules/ForgetPassword/sections/forget_section_form.dart';
import '../../modules/ForgetPassword/sections/forget_section_one.dart';

class  BodyForgetPassword extends StatelessWidget {
   const BodyForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 77, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
         const ForgetSectionOne(),
         ForgetSectionForm(),
         
        ],
      ),
    );
  }
}