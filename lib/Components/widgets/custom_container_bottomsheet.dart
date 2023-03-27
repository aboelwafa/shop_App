// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shop_app/Components/widgets/ranger_slider.dart';

import '../components/material_button.dart';
import '../components/title.dart';
import '../styles/colors.dart';
import '../styles/styles.dart';
// ignore: duplicate_ignore, duplicate_ignore
Widget myContainerBottomSheet(context,{
      required double heightContainer,
      String TitleContainer='FILTERS',
      String fristSubTitle='Price Range',
      String minText=' 14 usd',
      String maxText=' 1000 usd',
      String dividText=' 800 usd',
       // ignore: avoid_types_as_parameter_names
       ContainerType  ,
       ContainerCategory
     ,
      String TextButton='Aplay',
      required RangeValues values,
      required void Function(RangeValues)? onChangedRangeValues,




})=>Container(
            height: heightContainer,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: ListView(
                physics:const ClampingScrollPhysics(),
                children: [
                  myTitle(text: TitleContainer),
                  const SizedBox(height: 30,),
                  subTitle(text: fristSubTitle),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(minText,style: const TextStyle(
                      fontSize: 22,

                    ),),
                    
                    Text(dividText,style: const TextStyle(
                      fontSize: 22,
                      
                    ),),
                  ],),
                   MySlider.rangersSlider(
                    values: values,
                    onChanged:onChangedRangeValues,
                     ),
                  
                  const SizedBox(height: 20,),
                   ContainerType(),
                  const SizedBox(height: 20,),
                  ContainerCategory(),
                const SizedBox(height: 20,),
                  myButton(backgroundColor: MyColors.primaryColor, data:TextButton, style: Styles.style21.copyWith(color: MyColors.white), onPressed: (){
                   Navigator.pop(context);
                  }),
                 const SizedBox(height: 20,),
                // 
                ],
              ),
            ),
          );
  