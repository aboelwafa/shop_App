// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app/Components/styles/colors.dart';

import 'cubit/my_home_cubit.dart';

class HomeLayoutScreen extends StatelessWidget {
  late TabController _tabController;
   HomeLayoutScreen({super.key});
  // final List<String> _labels = ['', ''];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyHomeCubit(),
      child:BlocConsumer<MyHomeCubit, MyHomeState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          MyHomeCubit cubit= MyHomeCubit.get(context);
          return Scaffold(
        backgroundColor: MyColors.white,
         body: cubit.bottomScreen[cubit.currentIndex],
      
     bottomNavigationBar: Padding(
       padding: const EdgeInsets.all(10.0),
       child: Container(
          height: 70,
          padding: EdgeInsets.only(left: 5,right: 20),
          decoration: BoxDecoration(
            color: MyColors.textPrimary,
            borderRadius: BorderRadius.circular(50)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: MyColors.white,
                child: Icon(Icons.home_outlined,size: 30,color: MyColors.textPrimary,)),
             Icon(Icons.explore,size: 30,color: MyColors.white,),
              Icon(Icons.favorite_border,size: 30,color: MyColors.white,),
              Icon(Icons.messenger_outline,size: 30,color: MyColors.white,),
              Icon(Icons.person_outline,size: 30,color: MyColors.white,)
            ],
          )
        ),
     ),
      );
        }
      )
    );
  }
}
