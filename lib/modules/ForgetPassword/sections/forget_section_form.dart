// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';

import '../../../Components/components/material_button.dart';
import '../../../Components/components/my_textform_field.dart';
import '../../../Components/constants/app_router.dart';
import '../../../Components/styles/colors.dart';
import '../../../Components/styles/styles.dart';
import 'package:go_router/go_router.dart';
class ForgetSectionForm extends StatelessWidget {
   ForgetSectionForm({super.key});

 TextEditingController emailController = TextEditingController();

  String emailValue = '';

bool isClicked=false;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          infoTitle(text: 'Email'),
           const SizedBox(height: 20),
                myTextFormField(
                  onChanged: (p0) {
                    emailValue = p0;
                  },
                  controller: emailController,
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
                ),
           const SizedBox(height: 44),
             myButton(
                    
                    backgroundColor: MyColors.primaryColor,
                        
                    data: 'Send Email',
                    raduis: 20,
                    style: Styles.styleButton,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRouter.KresetScreen);
                        emailController.clear();
                       
                       
                      }
                    }
                    ),
                    
        ],
      ),
    );
  }
}