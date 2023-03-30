import 'package:flutter/material.dart';
import '../../../Components/components/title.dart';
import '../../../Components/styles/colors.dart';
class ImageProfile extends StatelessWidget {
  const ImageProfile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
    
            backgroundImage: AssetImage('assets/images/alexendre.png'),
            radius: 60,
          
    
          ),
            const SizedBox(height: 20,),
          subTitle(text: 'Alexendre Hussain'),
           
           TextButton(onPressed: (){}, child: Text('Change Photo',style: TextStyle(
            color: MyColors.textSecondary,
            fontSize: 20,
           ),)),
        ],
      ),
    );
  }
}