// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';

import '../../../Components/components/material_button.dart';
import '../../../Components/components/title.dart';
import '../../../Components/constants/app_router.dart';
import '../../../Components/styles/colors.dart';
import '../../../Components/styles/styles.dart';
import '../../../Components/widgets/text_form_fieldPassword.dart';
import 'package:go_router/go_router.dart';
class NewpasswordSectionForm extends StatelessWidget {
  var passwordController=TextEditingController();
  var confirmPasswordController=TextEditingController();
  String passwordValue='';
  String confirmPassValue='';
  var formKey=GlobalKey<FormState>();
   NewpasswordSectionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Form(
          key:formKey ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
             [
              // password
              infoTitle(text: 'Password'),
              const SizedBox(height: 20,),
              
              passwordField(
                validator:(value) 
                {
                  if(value!.isEmpty)
                  {
                    return 'the password field must not be empty';
                  } 
                }, 
                onChanged:(value) {
      
                passwordValue=value;
              },  controller: passwordController,
              onFieldSubmitted: (p0) {
                passwordValue=p0;
              },
              ),
               const SizedBox(height: 30,),
                 // ConfirmPassword
              infoTitle(text: 'Confirm New Password'),
              const SizedBox(height: 20,),
              
              passwordField(
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return 'the password field must not be empty';
                  }
                  else if(confirmPassValue!=passwordValue)
                  {
                    return 'Your New Password doesn\'t match Make sure to keep it same';
                  }
                  
                  return null;
                },
                onFieldSubmitted: (p0) {
                  confirmPassValue=p0;
                },
                onChanged:(value) {
                confirmPassValue=value;
              },  controller: confirmPasswordController,
              hintText: 'Confirm Your password'
              ),
              const SizedBox(height: 40),
                  myButton(
                    
                      backgroundColor: MyColors.primaryColor,
                      data: 'Done',
                      raduis: 20,
                      style: Styles.styleButton,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          GoRouter.of(context).pushReplacement(AppRouter.KLogingScreen);
                          confirmPasswordController.clear();
                          passwordController.clear();
                        
                        }
                      }),
            ],
          ),
        ),
      ),
    );
  }
}