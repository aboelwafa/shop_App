// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/build_container_bottom_sheet.dart';

class EnjoyNewNick extends StatelessWidget {
  const EnjoyNewNick({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40,bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enjoy New Nike ',style: TextStyle(
                color: MyColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),),
               
               Text('Products',style: TextStyle(
                color: MyColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
          ,SizedBox(width: 71,),

            Container(
              width: 74,
              height: 72,
              decoration: BoxDecoration(
                color: MyColors.red,
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                ),
              boxShadow: [BoxShadow(
              color: Colors.red.withOpacity(0.6),
              offset: const Offset(0,2),
              blurRadius: 5.0,
              spreadRadius:1
            )]
              ),
              child: IconButton(icon:Icon(Icons.more_horiz,color: MyColors.white,size: 35,),
              onPressed: (){
               _moreModalBottomSheet(context);
              },),
            ) 
        ],
      ),
    );
  }
  _moreModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return ContainerBottomSheet();
        });
  }
}
// 