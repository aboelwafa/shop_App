 import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';

import '../components/my_textform_field.dart';

Widget usernameField({
 required void Function(String)? onChanged,
 required TextEditingController controller
}) {
    return myTextFormField(
              onChanged:onChanged,
              controller: controller,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'userName must not be empty';
                }
                return null;
              },
              keyboardAppearance: Brightness.light,
              fillColor: MyColors.fillcolor,
              hintStyle: Styles.hintStyle,
              hintText: 'enter your username',
            );
  }