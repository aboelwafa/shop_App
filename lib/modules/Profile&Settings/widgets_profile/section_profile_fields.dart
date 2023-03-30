
  import 'package:flutter/material.dart';

import '../../../Components/styles/styles.dart';
import '../../../Components/widgets/text_form_field_email.dart';
import '../../../Components/widgets/text_form_field_username.dart';

Column sectionProfileField() {
    var phoneController=TextEditingController();
    var nameController=TextEditingController();
    var emailController=TextEditingController();
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Name',
                  style: Styles.grayText,
                ),
                 const SizedBox(height: 10,),
                usernameField(
                  controller: nameController, onChanged: (String nameValue) {
                  var name=nameValue;
                  }),
                  const SizedBox(height: 20,),
              Text(
                  'Email',
                  style: Styles.grayText,
                ),
                const SizedBox(height: 10,),
                emailField(
                  controller: emailController, onChanged: (String nameValue) {
                  var name=nameValue;
                  }),
                      const SizedBox(height: 20,),
              Text(
                  'Phone',
                  style: Styles.grayText,
                ),
                const SizedBox(height: 10,),
                usernameField(
                  hintText: 'Enter your phone',
                  controller: phoneController, onChanged: (String nameValue) {
                  var name=nameValue;
                  }),
            ],
          );
  }
