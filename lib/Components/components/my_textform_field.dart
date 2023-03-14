import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

Widget myTextFormField({
  required TextEditingController controller,
  required TextInputType? keyboardType,
  Brightness? keyboardAppearance,
  required String? Function(String?)? validator,
  bool enabledBorder=true,
  String?hintText,
    bool fill=true,
    Color? fillColor,
    TextStyle? hintStyle,
double hintTextsize=20,
bool obscureText = false,
void Function(String)? onChanged  ,
void Function(String)? onFieldSubmitted
})=>TextFormField(
  onFieldSubmitted:onFieldSubmitted ,
            obscureText: obscureText,
            onChanged:onChanged ,
            controller: controller,
            keyboardType:keyboardType,
            keyboardAppearance: keyboardAppearance,
            validator: validator,
              decoration: InputDecoration(
              disabledBorder: outlineInputBorder(),
              enabled: enabledBorder,
              enabledBorder: outlineInputBorder(),
              hintText: hintText,
              hintStyle: hintStyle,
              filled: fill,
              fillColor: fillColor,
              border: outlineInputBorder(),
              focusedBorder:outlineInputBorder() ,
            ),
          );
          
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(

              borderSide: BorderSide(
                width: 1,
                color: MyColors.gray50),
              borderRadius: BorderRadius.circular(40),
            );
  }
