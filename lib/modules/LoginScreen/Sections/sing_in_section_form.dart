import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/my_textform_field.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';
import 'package:go_router/go_router.dart';
import '../../../Components/components/material_button.dart';

class SingInSectionForm extends StatefulWidget {
  const SingInSectionForm({super.key});

  @override
  State<SingInSectionForm> createState() => _SingInSectionFormState();
}

class _SingInSectionFormState extends State<SingInSectionForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String userValue = '';
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
    userNameController.dispose();
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
                'Username',
                style: Styles.grayText,
              ),
              const SizedBox(height: 20),
              myTextFormField(
                onChanged: (p0) {
                  userValue = p0;
                },
                controller: userNameController,
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
              ), //
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Text(
                'Password',
                style: Styles.grayText,
              ),
              const SizedBox(height: 20),
              myTextFormField(
                onFieldSubmitted: (value){
                  if(value.isNotEmpty)
                  {
                    isClicked=!isClicked;
                    setState(() {
                      
                    });
                  }
                },
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
              const SizedBox(height: 20),

//               Row(
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         isClicked = !isClicked;
//                         if (emailValue.isNotEmpty && passwordValue.isNotEmpty) {
//                           setState(() {});
//                         }
//                       },
//                       icon: isClicked
//                           ? const Icon(
//                               Icons.check_circle,
//                               color: Colors.blue,
//                             )
//                           : const Icon(
//                               Icons.check_circle,
//                               color: Colors.grey,
//                             )),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     'Remember me',
//                     style: Styles.style21.copyWith(fontSize: 18),
//                   )
//                 ],
//               ),
// //

              myButton(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  backgroundColor:
                      isClicked ? Colors.blue : MyColors.primaryColor,
                  data: 'Sing In',
                  raduis: 20,
                  style: Styles.styleButton,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushReplacement(AppRouter.KLogingScreen);
                      emailController.clear();
                      passwordController.clear();
                      userNameController.clear();
                      isClicked = false;
                      setState(() {});
                    }
                  }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
