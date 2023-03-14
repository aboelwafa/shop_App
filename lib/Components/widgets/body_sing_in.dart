import 'package:flutter/material.dart';

import '../../modules/LoginScreen/Sections/sing_in_section_form.dart';
import '../../modules/LoginScreen/Sections/singin_section_one.dart';

class BodySingIn extends StatelessWidget {
  const BodySingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 77, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
         SingInSectionOne(),
          SingInSectionForm(),
          //
        ],
      ),
    );
  }
}