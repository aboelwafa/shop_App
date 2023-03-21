import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/custom_appbar_discover.dart';

import '../../../Components/components/container_image.dart';

class MainSectionCategory extends StatelessWidget {
  const MainSectionCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbarDiscover(title: 'CATEGORY',
        iconLead: Icons.arrow_back,
        iconLeadButton: (){
          Navigator.pop(context);
        },
        iconAction: Icons.notifications_none_outlined,
        ),
        const SizedBox(height: 30,),
        
        SizedBox(
          height: 50,
          child: ListView(
           
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
           myContainerProduct(
            width: 80,
            height: 70,
            child: const Center(child: Text('All',style: TextStyle(fontSize: 20),)), backgroundColor: MyColors.fillcolor),
            const SizedBox(width: 20,),

               myContainerProduct(
            width: 100,
            height: 70,
            child: Center(child: Text('Men’s',style: TextStyle(fontSize: 20,color: MyColors.white),)), backgroundColor: MyColors.red),
            const SizedBox(width: 20,),

               myContainerProduct(
            width: 100,
            height: 70,
            child: const Center(child: Text('Women’s',style: TextStyle(fontSize: 20),)), backgroundColor: MyColors.fillcolor),
            const SizedBox(width: 20,),

               myContainerProduct(
            width: 100,
            height: 70,
            child: const Center(child: Text('Kids',style: TextStyle(fontSize: 20),)), backgroundColor: MyColors.fillcolor),
            const SizedBox(width: 20,),
           
          ],
        ),
        ),

      ],
    );
  }
}