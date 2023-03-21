import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';
import '../components/title.dart';
import '../styles/colors.dart';
import 'build_list_discoverall.dart';

import 'custom_appbar_discover.dart';

class BodyDisoverScreen extends StatelessWidget {
  const BodyDisoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbarDiscover(
              iconLead: Icons.arrow_back,
              iconLeadButton: (){
                Navigator.pop(context);
              },
              title: 'DISCOVER ALL',iconAction: Icons.notifications,),
           const SizedBox(height: 40,),
           miSubTitle(text: '1001 Shoes Are'),
           const SizedBox(height: 15,),
           Text( 'Available',style:Styles.grayText.copyWith(color: MyColors.textPrimary) ,),
           const SizedBox(height: 20,),
          const BuildListDiscoverProducts(),
         
          ],
        ),
      ),
    );
  }
}
