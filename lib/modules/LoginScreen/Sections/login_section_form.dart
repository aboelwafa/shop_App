// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';
import 'package:go_router/go_router.dart';
import '../../../Components/components/material_button.dart';
import '../../../Components/components/title.dart';
import '../../../Components/widgets/text_form_fieldPassword.dart';
import '../../../Components/widgets/text_form_field_email.dart';

class LoginSectionForm extends StatefulWidget {
  const LoginSectionForm({super.key});

  @override
  State<LoginSectionForm> createState() => _LoginSectionFormState();
}

class _LoginSectionFormState extends State<LoginSectionForm> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String emailValue = '';
  String passwordValue = '';

  var formKey = GlobalKey<FormState>();

  bool isClicked = false;
  @override
  void initState() {
    super.initState();
    isClicked = false;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              infoTitle(text: 'Email'),
              const SizedBox(height: 20),
              emailField(
                  onChanged: (value) {
                    emailValue = value;
                  },
                  controller: emailController),
              const SizedBox(
                height: 40,
              ),
              infoTitle(text: 'Password'),
              const SizedBox(height: 20),
              passwordField(
                validator: (value) 
                {
                  if(value!.isEmpty)
                  {
                    return 'the password field must not be empty';
                  }  
                },
                controller: passwordController,
                onChanged: (value) {
                  passwordValue = value;
                },
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        isClicked = !isClicked;
                        if (emailValue.isNotEmpty && passwordValue.isNotEmpty) {
                          setState(() {});
                        }
                      },
                      icon: isClicked
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.blue,
                            )
                          : const Icon(
                              Icons.check_circle,
                              color: Colors.grey,
                            )),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Remember me',
                    style: Styles.style21.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.KforgetScreen);
                      },
                      child: const Text('Forget Password?'))
                ],
              ),
              const SizedBox(height: 20),
              myButton(
                 
                  backgroundColor:
                      isClicked ? Colors.blue : MyColors.primaryColor,
                  data: 'Log In',
                  raduis: 20,
                  style: Styles.styleButton,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).push(AppRouter.KsingInScreen);
                      emailController.clear();
                      passwordController.clear();
                      isClicked = false;
                      setState(() {});
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
