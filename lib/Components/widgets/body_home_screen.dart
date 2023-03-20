// ignore_for_file: prefer_const_constructors
import 'package:shop_app/Components/widgets/build_list_home_product.dart';
import 'package:flutter/material.dart';
import 'build_list_home_markers.dart';
import 'custom_appbar_home.dart';
import 'enjoynewnick_home.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 22),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            CustomAppBarHome(title: 'HOME', icon1: Icons.app_registration_rounded,
            LeadOnPress: ()
            {
               Scaffold.of(context).openDrawer();
            },
            ),
            
            SizedBox(
              height: 20,
            ),
            EnjoyNewNick(),
            SizedBox(
              height: 20,
            ),
            BuildListHomeMark(),
            SizedBox(
              height: 20,
            ),
            BuildListHomeProducts(),
             SizedBox(
              height: 20,
            ),
          
        
          ],
        ),
      ),
    );
  }
}
