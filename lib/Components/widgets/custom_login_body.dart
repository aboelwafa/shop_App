import 'package:flutter/material.dart';
import '../../modules/LoginScreen/Sections/login_section_form.dart';
import '../../modules/LoginScreen/Sections/login_section_one.dart';

class LoginBody extends StatelessWidget {
 
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 77, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const LoginSectionOne(),
          LoginSectionForm(),
          //
        ],
      ),
    );
  }
}
