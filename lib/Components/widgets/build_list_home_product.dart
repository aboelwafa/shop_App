
// ignore_for_file: depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../components/container_image.dart';
import '../constants/app_router.dart';

class BuildListHomeProducts extends StatelessWidget {
  const BuildListHomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      crossAxisSpacing: 2,
      mainAxisSpacing: 5,
      childAspectRatio: 1.0 / 2,
      children: List.generate(
        10, (index) =>myList(context)),
    );
  }
}

Widget myList(context) => InkWell(
  onTap: (){
    GoRouter.of(context ).push(AppRouter.KDetailsScreen);
  },
  child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            myContainerProduct(
            backgroundColor: MyColors.fillcolor,
            child:  Image.asset('assets/images/airMax270.png')
          ),
          const SizedBox(
                 height: 16,
          ),
          miSubTitle(text: 'Air Zoom'),
          const SizedBox(
            height: 10,  
          ),
          startTitle(text: 'USD 780'),
        ],
  
      ),
);
      // 