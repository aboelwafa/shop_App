 import 'package:flutter/material.dart';

abstract class MySlider{
  static RangeSlider rangersSlider({
required RangeValues values,
  double min=14,
     double max=1000,
     int divisions=800,
     required void Function(RangeValues)? onChanged,
}) {
    return RangeSlider(
          values: values,
          min: min ,
          max: max,
          
          divisions: divisions,
          labels: RangeLabels(
            values.start.round().toString(),
            values.end.round().toString(),
          ),
          onChanged: onChanged,
        );
  }
}
