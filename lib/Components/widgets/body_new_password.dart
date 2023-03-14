import 'package:flutter/widgets.dart';

import '../../modules/ForgetPassword/sections/new_password_section_form.dart';
import '../../modules/ForgetPassword/sections/new_password_section_one.dart';

class BodyNewPassword  extends StatelessWidget {
  const BodyNewPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0,left: 32,right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    
        children: [

         const NewpasswordSectionOne(),
          NewpasswordSectionForm(),
        ],
      ),
    );
  }
}
 