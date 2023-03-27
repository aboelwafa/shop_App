import 'package:flutter/material.dart';
import '../../modules/Search&categroy/sections/last_search_section_search.dart';
import '../../modules/Search&categroy/sections/last_seen_section_search.dart';
import '../../modules/Search&categroy/sections/main_section_search.dart';

class BodySearchScreen extends StatelessWidget {
  const BodySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            SearchMainSection(),
            SizedBox(height: 30,),
            LastSeenSearcScreenhSection(),
            SizedBox(height: 30,),
            LastSearcScreenhSection(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
