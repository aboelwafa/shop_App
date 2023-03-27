 // ignore_for_file: file_names, non_constant_identifier_names

 import 'package:flutter/material.dart';
abstract class ModelBottomSheet{
static moreModalBottomSheet(context,{required Widget  Widgetbuilder}) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Widgetbuilder;
        });
  }
}