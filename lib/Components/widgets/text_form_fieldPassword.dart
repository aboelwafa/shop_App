// ignore_for_file: file_names

  import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/my_textform_field.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';

// 1_password
Widget passwordField({
 required void Function(String)? onChanged,
  required TextEditingController controller,
   String hintText='enter your password',
   void Function(String)? onFieldSubmitted,
    String? Function(String?)? validator,
   
}) {
    return myTextFormField(
      onFieldSubmitted:onFieldSubmitted ,
              onChanged: onChanged,
              controller: controller,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              validator: validator,
              keyboardAppearance: Brightness.light,
              fillColor: MyColors.fillcolor,
              hintStyle: Styles.hintStyle,
              hintText: hintText,
            );
}


