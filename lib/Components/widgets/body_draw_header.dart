import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class BodyDrawHeader extends StatelessWidget {
  const BodyDrawHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         InkWell(
          onTap: (){},
          child: startTitle(text: 'All Categories')),
       const   SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Track Order')),
        const  SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Discover All')),
            const  SizedBox(height: 20,),
             InkWell(
          onTap: (){},
          child: startTitle(text: 'Location')),
       const   SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Payment Cards')),
        const  SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Orders')),
            const  SizedBox(height: 20,),
             InkWell(
          onTap: (){},
          child: startTitle(text: 'Scan')),
       const   SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Settings')),
        const  SizedBox(height: 40,),

        Row(children: [
          Icon(Icons.output_outlined,color: MyColors.red,size: 30,),
            const SizedBox(width: 15,),
          InkWell(
            onTap: (){},
            child: startTitle(text: 'Sing Out')),
        ],)
          
      
      ],
    );
  }
}