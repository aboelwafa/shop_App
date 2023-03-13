import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/my_textform_field.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';
import 'package:go_router/go_router.dart';
import '../../../Components/components/material_button.dart';
import '../../../Components/widgets/custom_remeberMe.dart';

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
              Text(
                'Email',
                style: Styles.grayText,
              ),
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
              ), //

              const SizedBox(
                height: 40,
              ),
              Text(
                'Password',
                style: Styles.grayText,
              ),
              const SizedBox(height: 20),
              myTextFormField(
                onChanged: (p0) {
                  passwordValue = p0;
                },
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'password must not be empty';
                  }
                  return null;
                },
                keyboardAppearance: Brightness.light,
                fillColor: MyColors.fillcolor,
                hintStyle: Styles.hintStyle,
                hintText: 'enter your password',
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
                  )
                ],
              ),

              const SizedBox(height: 20),
              myButton(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
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
