import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';
import 'package:shop_app/Components/widgets/custom_appbar_home.dart';

import '../components/container_image.dart';
import '../components/title.dart';
import '../styles/colors.dart';
import 'build_list_discoverall.dart';
import 'build_list_home_product.dart';

class BodyDisoverScreen extends StatelessWidget {
  const BodyDisoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const CustomAppbarDiscover(),
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
class CustomAppbarDiscover extends StatelessWidget {
  const CustomAppbarDiscover({super.key});

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
                  icon: Icon(Icons.arrow_back , color: MyColors.textPrimary, size: 30),
                  onPressed: (){},
                )),
              ),
            ),
            myTitle(text: 'DISCOVER ALL'),
             CircleAvatar(
              radius: 30,
              backgroundColor: MyColors.gray50,
              child: CircleAvatar(
                radius: 29,
                backgroundColor: MyColors.white,
                child: Center(
                    child: IconButton(
                  icon: Icon(Icons.notifications_outlined , color: MyColors.textPrimary, size: 30),
                  onPressed: (){},
                )),
              ),
            ),
        ],
      ),
    );
  }
}