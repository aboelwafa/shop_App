import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/navigator.dart';
import 'package:shop_app/Components/constants/app_router.dart';

import '../styles/colors.dart';
import 'custom_appbar_home.dart';

class BodyDetailsProduct extends StatelessWidget {
  const BodyDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarHome(icon1: Icons.arrow_back,title:'DETAIL' ,LeadOnPress: ()
          {
            Navigator.pop(context);
          },),
          const SizedBox(height: 20,),
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/ima1.png'))
            ),
          )
          ,const SizedBox(height: 30,),
          const DetailsTitleProduct()
          ,const SizedBox(height: 30,),
          const DetailsSectionTwo(),

        ],
      ),
    );
  }
}
class DetailsTitleProduct extends StatelessWidget {
  const DetailsTitleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Row(
            children: [
              Text('Air Max 270 ',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),),
                
              const  Spacer(),
               CircleAvatar(radius: 7,backgroundColor: MyColors.circle,),
              const SizedBox(width: 10,),
              CircleAvatar(radius: 7,backgroundColor: MyColors.primaryColor,),
              const SizedBox(width: 10,),
              CircleAvatar(radius: 7,backgroundColor: MyColors.yellow,),
              const SizedBox(width: 10,),
    
          ],),
             const SizedBox(height: 15,),
                 Text('Sneakers',style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
    
        ],
      ),
    );
  }
}
// 
class DetailsSectionTwo extends StatelessWidget {
  const DetailsSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Structure',style: TextStyle(
                      color: MyColors.textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(height: 20,),
                   Row(
                    children:
                     [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             RichText(text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>
                      [
                        TextSpan(
                          text: 'Outer Material:',style: TextStyle(
                          color: MyColors.grayText,
                          fontSize: 20,
                        ),
                        ),
                        TextSpan(
                          text: ' Rubber 100%',style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 20,
                        ),
                        ),
                      ]
                    ),
                    ),
                     const SizedBox(height: 20,),
                    RichText(text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>
                      [
                        TextSpan(
                          text: 'lining:',style: TextStyle(
                          color: MyColors.grayText,
                          fontSize: 20,
                        ),
                        ),
                        TextSpan(
                          text: ' Rubber 100%',style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 20,
                        ),
                        ),
                      ]
                    ),
                    ),
                     const SizedBox(height: 20,),
                    RichText(text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>
                      [
                        TextSpan(
                          text: 'sole:',style: TextStyle(
                          color: MyColors.grayText,
                          fontSize: 20,
                        ),
                        ),
                        TextSpan(
                          text: ' Rubber 100%',style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 20,
                        ),
                        ),
                      ]
                    ),
                    ),
                    const SizedBox(height: 30,),
                    TextButton(onPressed: (){
                     navigatorPush(context, pathAppRouter: AppRouter.KSearchScreen);
                    }, child: Text('...  Details',style: TextStyle(
                      color: MyColors.primaryColor,
                      fontSize: 22,
                    ),)
                    ),
            
                          ],
                        ),
                    ],
                   ),
                   
            
            ],
    
          ),
         Positioned(
          
          right: 3,
          bottom: 1,
          child:  Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(40)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopify,color: MyColors.white,size: 30,),
                const SizedBox(height: 30,),
                Text('USD 650',style: TextStyle(color: MyColors.white,fontWeight: FontWeight.bold,fontSize: 22),)
              ],
            ),
          ),)
         
        ],
      ),
    );
  }
}