  import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../components/my_textform_field.dart';
import '../styles/colors.dart';
// EMAIL WIDGET

Widget emailField({
    required void Function(String)? onChanged,
    required TextEditingController controller

  }) {
    return myTextFormField(
              onChanged:onChanged,
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'email address must not be empty';
                }
                return null;
              },
              keyboardAppearance: Brightness.light,
              fillColor: MyColors.fillcolor,
              hintStyle: Styles.hintStyle,
              hintText: 'enter your email',
            );
  }