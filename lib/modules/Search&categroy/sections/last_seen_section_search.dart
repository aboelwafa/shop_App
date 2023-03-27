import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import '../../../Components/components/container_image.dart';
import '../../../Components/components/title.dart';


class LastSeenSearcScreenhSection extends StatelessWidget {
  const LastSeenSearcScreenhSection({super.key});

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
          // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         startTitle(text: 'Last Seen'),
         const SizedBox(height: 20,),
          SizedBox(
        height: 100.0,
        child: ListView.builder( 
          
          physics:const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
        
          itemBuilder: (BuildContext context, int index) =>
           Padding(
             padding: const EdgeInsets.only(top: 10,right: 5),
             child: myContainerProduct(
              height: 80,
              width: 80,
              child: Image.asset('assets/images/sho3.png'), backgroundColor: MyColors.fillcolor),
           ),
        ),
      ),
        
        ],
      ),
    );
  }
}
  