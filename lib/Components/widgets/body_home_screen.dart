// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';

import '../components/title.dart';
import 'build_list_home_markers.dart';
import 'custom_appbar_home.dart';
import 'enjoynewnick_home.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBarHome(),
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

class BuildListHomeProducts extends StatelessWidget {
  const BuildListHomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      crossAxisSpacing: 2,
      mainAxisSpacing: 5,
      childAspectRatio: 1.0 / 2,
      children: List.generate(
        10, (index) =>myList()),
    );
  }
}

Widget myList() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 170,
          height: 220,
          decoration: BoxDecoration(
            color: MyColors.fillcolor,
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Image.asset('assets/images/airMax270.png'),
        ),
        SizedBox(
          height: 16,
        ),
        miSubTitle(text: 'Air Zoom'),
        SizedBox(
          height: 10,
        ),
        startTitle(text: 'USD 780'),
      ],
    );
      // 