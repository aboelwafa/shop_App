import 'package:flutter/material.dart';
import 'package:shop_app/modules/Profile&Settings/widgets_profile/section_profile_fields.dart';

import '../../../Components/components/material_button.dart';
import '../../../Components/components/navigator.dart';
import '../../../Components/components/title.dart';
import '../../../Components/constants/app_router.dart';
import '../../../Components/styles/colors.dart';
import '../../../Components/styles/styles.dart';
import '../../../Components/widgets/custom_appbar_discover.dart';
import '../../../Components/widgets/text_form_field_email.dart';
import '../../../Components/widgets/text_form_field_username.dart';
import 'custom_image_profile.dart';

class BodyProfileScreen extends StatelessWidget {
  var nameController=TextEditingController();
    var emailController=TextEditingController();
  var phoneController=TextEditingController();

  String name='';
   BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbarDiscover(
            iconLead: Icons.arrow_back,
            iconLeadButton: () {
              Navigator.pop(context);
            },
            title: 'Profile',),
            const SizedBox(height: 20,),
            const ImageProfile(),
const SizedBox(height: 20,),
            sectionProfileField(),
                const SizedBox(height: 10,),
                  Expanded(
                    child: myButton(backgroundColor: MyColors.primaryColor, 
                        data: 'Save Changes', style: Styles.styleButton, onPressed: (){
                         // navigatorPush(context, pathAppRouter: AppRouter.KCheckoutScreen);
                        }),
                  ),

        ],
      ),
    );
  }

}

