import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/container_image.dart';
import 'package:shop_app/Components/components/material_button.dart';

import '../../../Components/components/navigator.dart';
import '../../../Components/constants/app_router.dart';
import '../../../Components/styles/colors.dart';
import '../../../Components/styles/styles.dart';
import '../../../Components/widgets/custom_app_bar.dart';
import '../section_profile/section_address_scree.dart';
import '../section_profile/section_main_address.dart';

class BodyAddressScreen extends StatelessWidget {
  const BodyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const SectionMainAddress(),
        const SizedBox(height: 30,),
        const SectionAddress(),
        const Spacer(),
       myButton(backgroundColor: MyColors.primaryColor, 
                      data: 'Change Now', style: Styles.styleButton, onPressed: (){
                        navigatorPush(context, pathAppRouter: AppRouter.KProfileScreen);
                      }),
                       
        ],
      ),
    );
  }
}

