// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../components/title.dart';

class CustomAppbarDiscover extends StatelessWidget {
   CustomAppbarDiscover({
    required this.title,
    super.key,this.iconLead,this.iconAction,this.iconLeadButton,this.iconActionButton});
IconData? iconLead;
IconData? iconAction;
void Function()? iconLeadButton; 
void Function()? iconActionButton; 
 String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: MyColors.gray50,
              child: CircleAvatar(
                radius: 29,
                backgroundColor: MyColors.white,
                child: Center(
                    child: IconButton(
                  icon: Icon(iconLead , color: MyColors.textPrimary, size: 30),
                  onPressed: iconLeadButton,
                )),
              ),
            ),
            myTitle(text: title),
             CircleAvatar(
              radius: 30,
              backgroundColor: MyColors.gray50,
              child: CircleAvatar(
                radius: 29,
                backgroundColor: MyColors.white,
                child: Center(
                    child: IconButton(
                  icon: Icon(iconAction , color: MyColors.textPrimary, size: 30),
                  onPressed: iconActionButton,
                )),
              ),
            ),
        ],
      ),
    );
  }
}