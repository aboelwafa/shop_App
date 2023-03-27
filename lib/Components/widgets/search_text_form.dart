// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../components/my_textform_field.dart';
import '../styles/colors.dart';
import 'build_container_bottom_sheet.dart';
import 'moreModelBottomSheet.dart';

class SearchTextForm extends StatelessWidget {
   SearchTextForm({super.key});
var searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return myTextFormField(
      controller: searchController,
       keyboardType: TextInputType.text,
        validator: (value){
          if(value!.isEmpty)
          {
            return 'should write any word';
          }
          return null;
        },
        fill: true,
         fillColor: MyColors.fillcolor,
         hintText: 'Search for Shoes',
         hintStyle: TextStyle(color: MyColors.textPrimary,fontSize: 20),
         prefixIcon: Icons.search_sharp,
         prefixIconColor: MyColors.textPrimary,
         suffixIcon:IconButton(icon: const Icon(Icons.app_registration_rounded),
         onPressed: (){
           ModelBottomSheet.moreModalBottomSheet(context, Widgetbuilder:const ContainerBottomSheet());
         },
         ),
         suffixIconColor: MyColors.red,
         

        );
  }
}