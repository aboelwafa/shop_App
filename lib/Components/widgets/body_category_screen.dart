import 'package:flutter/material.dart';

import '../../modules/Search&categroy/sections/build_list_section_category.dart';
import '../../modules/Search&categroy/sections/main_section_category.dart';

class BodyCategoryScreen extends StatelessWidget {
  const BodyCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            MainSectionCategory(),
            SizedBox(height: 35,),
            BuildSectionListProduct(),
          ],
        ),
      ),
    );
  }
}