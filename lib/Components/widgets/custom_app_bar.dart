 import 'package:flutter/material.dart';

import 'custom_appbar_discover.dart';

CustomAppbarDiscover appbarRow(BuildContext context,{required String text}) {
    return CustomAppbarDiscover(
          title: text,
          iconLead: Icons.arrow_back,
          iconLeadButton: () {
            Navigator.pop(context);
          },
          iconAction: Icons.notifications_none_outlined,
        );
  }