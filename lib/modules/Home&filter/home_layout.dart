// ignore_for_file: depend_on_referenced_packages, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app/Components/styles/colors.dart';

import '../../Components/components/nav_bar.dart';
import 'cubit/my_home_cubit.dart';

class HomeLayoutScreen extends StatelessWidget {
   const HomeLayoutScreen({super.key});
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
        bottomNavigationBar:           const Padding(padding:EdgeInsets.all(10.0),
        child: CustomBottomNavbar(),
        ),
      );
        }
      )
    );
  }
}

