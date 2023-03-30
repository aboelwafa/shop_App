import 'package:flutter/material.dart';

import '../../../Components/styles/colors.dart';
import '../../../Components/widgets/custom_app_bar.dart';

class SectionMainAddress extends StatelessWidget {
  const SectionMainAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appbarRow(context,text: 'Address'),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('Change your Current Address',
          style: TextStyle(
           height: 2,
           color:MyColors.textPrimary,fontSize: 25),),
        ),
      ],
    );
  }
}
