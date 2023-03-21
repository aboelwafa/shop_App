import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/navigator.dart';
import 'package:shop_app/Components/constants/app_router.dart';

import '../../../Components/widgets/custom_appbar_discover.dart';
import '../../../Components/widgets/search_text_form.dart';

class SearchMainSection extends StatelessWidget {
  const SearchMainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomAppbarDiscover(
            title: 'SEARCH',
            iconLead: Icons.arrow_back,
            iconAction: Icons.shopping_cart_outlined,
            iconActionButton: (){
              navigatorPush(context, pathAppRouter: AppRouter.KCategoryScreen);
            },
            ),
            const SizedBox(height: 40,),
            SearchTextForm(),
      ],
    );
  }
}