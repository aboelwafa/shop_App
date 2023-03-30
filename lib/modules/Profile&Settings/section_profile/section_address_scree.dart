import 'package:flutter/material.dart';

import '../../../Components/components/container_image.dart';
import '../../../Components/styles/colors.dart';
import '../../../Components/styles/styles.dart';

class SectionAddress extends StatelessWidget {
  const SectionAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
                'Old Address',
                style: Styles.grayText,
              ),
              myContainerProduct(
                height: 100,
                width: double.infinity,
                child: 
                  Padding(
             padding: const EdgeInsets.only(right: 100,top: 10,left: 20),
             child: Text('Toodely Benson Allentown, New Mexico 31134.',
             style: TextStyle(
              height: 2,
              color:MyColors.textPrimary,fontSize: 20),),
           ),
                backgroundColor: MyColors.fillcolor),
        const SizedBox(height: 30,),
         Text(
                'New Address',
                style: Styles.grayText,
              ),
              myContainerProduct(
                height: 100,
                width: double.infinity,
                child: 
                  Padding(
             padding: const EdgeInsets.only(right: 100,top: 10,left: 20),
             child: Text('Festival Darling street, Rozzela Mexico 68952.',
             style: TextStyle(
              height: 2,
              color:MyColors.textPrimary,fontSize: 20),),
           ),
                backgroundColor: MyColors.fillcolor),
        const SizedBox(height: 30,)
      ]
      ,
    );
  }
}