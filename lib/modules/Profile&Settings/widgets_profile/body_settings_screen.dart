import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/navigator.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../../../Components/components/title.dart';
import '../../../Components/widgets/custom_appbar_discover.dart';
import '../../../Components/widgets/show_alert_massage.dart';
class BodySettingsScreen extends StatelessWidget {
  const BodySettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           CustomAppbarDiscover(
            iconLead: Icons.arrow_back,
            iconLeadButton: () {
              Navigator.pop(context);
            },
            title: 'SETTINGS',),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'General Settings'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'Account Settings'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'Change Password'),
                IconButton(onPressed: (){
                  navigatorPush(context, pathAppRouter: AppRouter.KChangePasswordScreen);
                }, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'Notification'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'About us'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                miSubTitle(text: 'Privacy& policy'),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: MyColors.textPrimary,size: 25,))
            ],),
          const  SizedBox(height: 20,),
            Container(height: .2,
            width: double.infinity,
            color: MyColors.textSecondary,
            ),
             const  SizedBox(height: 20,),
             TextButton(onPressed: (){
              showAlertDialog(context, cancel: 'Cancel', remove: 'Delete', messge: 'Are your sure you wanna Delete this Account?');
             }, child: Text('Delete Account',style: TextStyle(color: MyColors.red,fontSize: 22),))
        ],
      ),
    );
  }
}