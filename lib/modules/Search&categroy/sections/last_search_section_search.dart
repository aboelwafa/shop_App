import 'package:flutter/material.dart';

import '../../../Components/components/title.dart';

class LastSearcScreenhSection extends StatelessWidget {
  const LastSearcScreenhSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        startTitle(text: 'Last Search'),
         const SizedBox(height: 20,),
         miSubTitle(text: 'Under Armour Shoes'),
          const SizedBox(height: 10,),
         miSubTitle(text: 'Nike Club Shoe'),
          const SizedBox(height: 10,),
         miSubTitle(text: 'Rebook Shoes'),
          const SizedBox(height: 10,),
         miSubTitle(text: 'Sports Shoes'),
      ],
    );
  }
}