// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shop_app/Components/constants/app_router.dart';

import '../../../Components/components/container_image.dart';
import '../../../Components/components/material_button.dart';
import '../../../Components/components/navigator.dart';
import '../../../Components/styles/colors.dart';

class BuildSectionListProduct extends StatelessWidget {
  const BuildSectionListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Shoes Available For  ',style: TextStyle(
                color: MyColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),),
               const SizedBox(height: 15,),
               Text('Men’s',style: TextStyle(
                color: MyColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 35,),
              myContainerProduct(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Nike Club Shoe  ',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                              ),),
                              const SizedBox(height: 10,),
                  Text('USD 70.87',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                              ),),
                              const SizedBox(height: 10,),
                              myButton(
                  width: 70,
                  height: 30,
                  backgroundColor: MyColors.primaryColor, data: 'view', style: TextStyle(
                  color: MyColors.white,fontWeight: FontWeight.bold,
                              ), onPressed: (){
                                navigatorPush(context, pathAppRouter: AppRouter.KCartScreen);
                              }
                              ),
                        ],
                      ),
                      Image.asset('assets/images/cat1.png',fit: BoxFit.cover,)
                    ],
                  ),
                ), 
              backgroundColor: MyColors.fillcolor),
              const SizedBox(height: 15,),
              myContainerProduct(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Nike Club Shoe  ',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                              ),),
                              const SizedBox(height: 10,),
                  Text('USD 70.87',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                              ),),
                              const SizedBox(height: 10,),
                              myButton(
                  width: 70,
                  height: 30,
                  backgroundColor: MyColors.primaryColor, data: 'view', style: TextStyle(
                  color: MyColors.white,fontWeight: FontWeight.bold,
                              ), onPressed: (){}
                              ),
                        ],
                      ),
                      Image.asset('assets/images/rebook.png',fit: BoxFit.cover,)
                    ],
                  ),
                ), 
              backgroundColor: MyColors.fillcolor),
              const SizedBox(height: 15,),
              myContainerProduct(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Nike Dual Shoe',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                              ),),
                              const SizedBox(height: 10,),
                  Text('USD 70.87',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                              ),),
                              const SizedBox(height: 10,),
                              myButton(
                  width: 70,
                  height: 30,
                  backgroundColor: MyColors.primaryColor, data: 'view', style: TextStyle(
                  color: MyColors.white,fontWeight: FontWeight.bold,
                              ), onPressed: (){}
                              ),
                        ],
                      ),
                      Image.asset('assets/images/cat2.png',fit: BoxFit.cover,)
                    ],
                  ),
                ), 
              backgroundColor: MyColors.fillcolor),
              const SizedBox(height: 15,),
      ],
    );
  }
}