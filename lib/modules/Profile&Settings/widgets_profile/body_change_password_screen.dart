import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../../Components/styles/styles.dart';
import '../../../Components/widgets/custom_appbar_discover.dart';
import '../../../Components/widgets/text_form_fieldPassword.dart';

class BodyChangePasswordScreen extends StatefulWidget {
  const BodyChangePasswordScreen({super.key});

  @override
  State<BodyChangePasswordScreen> createState() => _BodyChangePasswordScreenState();
}

class _BodyChangePasswordScreenState extends State<BodyChangePasswordScreen> {
  TextEditingController recentPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String recentvalue = '';
  
  String passwordValue = '';
   bool isClicked = false;
  @override
  void initState() {
    super.initState();
    isClicked = false;
  }

  @override
  void dispose() {
    super.dispose();
    
    passwordController.dispose();
    recentPasswordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             CustomAppbarDiscover(
              iconLead: Icons.arrow_back,
              iconLeadButton: () {
                Navigator.pop(context);
              },
              title: 'Change Password',),
              const SizedBox(height: 40,),
              Text(
                'Change Your Recent',style: TextStyle(
                  fontSize: 25,
                  color: MyColors.textPrimary,
              ),),
              const SizedBox(height: 15,),
              startTitle(text: 'Password'),
          const SizedBox(height: 25,),
               Text(
                'Recent Password',
                style: Styles.grayText,
              ),
                   const SizedBox(height: 20),
                  passwordField(
              validator: (value) {
                if(value!.isEmpty)
                {
                  return'the field must not be empty';
                }
                return null;
              },
              controller: passwordController,onChanged:(value) {
                  passwordValue = value;
                },
                onFieldSubmitted: (value) {
                   if(value.isNotEmpty)
                  {
                    isClicked=!isClicked;
                    setState(() {
                      
                    });
                  }
                },
                ),
            
             
              const SizedBox(height: 40,),
               Text(
                'Enter New Password',
                style: Styles.grayText,
              ),
               const SizedBox(height: 20),
                  passwordField(
                    
              validator: (value) {
                if(value!.isEmpty)
                {
                  return'the field must not be empty';
                }
                return null;
              },
              controller: recentPasswordController,onChanged:(value) {
                  recentvalue = value;
                },
                onFieldSubmitted: (value) {
                   if(value.isNotEmpty)
                  {
                    isClicked=!isClicked;
                    setState(() {
                      
                    });
                  }
                },
                ),
                Expanded(child: SizedBox(height: 30,))
            

        ],
      ),
    );
  }
}