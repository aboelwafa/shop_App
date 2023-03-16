import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/modules/Home&filter/discover_screen.dart';

import '../../Components/widgets/body_home_screen.dart';

class HomeScreen  extends StatefulWidget {
   HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(

      backgroundColor: MyColors.white,
    
      body:const BodyHomeScreen(),
     
    );
  }
}