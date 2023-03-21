// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/material_button.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/styles/styles.dart';
import 'bottom_sheet_container_category.dart';
import 'bottom_sheet_container_type.dart';

class ContainerBottomSheet extends StatefulWidget {
  const ContainerBottomSheet({super.key});

  @override
  State<ContainerBottomSheet> createState() => _ContainerBottomSheetState();
}

class _ContainerBottomSheetState extends State<ContainerBottomSheet> {
  
     RangeValues _currentRangeValues = const RangeValues(14, 800);
     double Min=14;
     double Max=1000;
     int Divisions=800;
  
  @override
  void initState() {
    
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
            height: size.height * 0.72,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: ListView(
                physics:const ClampingScrollPhysics(),
                children: [
                  myTitle(text: 'FILTERS'),
                  const SizedBox(height: 30,),
                  subTitle(text: 'Price Range'),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('$Min USD',style: const TextStyle(
                      fontSize: 22,

                    ),),
                    
                    Text('$Divisions USD',style: const TextStyle(
                      fontSize: 22,
                      
                    ),),
                  ],),
                   RangersSlider(),
                  
                  const SizedBox(height: 20,),
                  const ContainerType(),
                  const SizedBox(height: 20,),
                  ContainerCategory(),
                const SizedBox(height: 20,),
                  myButton(backgroundColor: MyColors.primaryColor, data: 'Apply', style: Styles.style21.copyWith(color: MyColors.white), onPressed: (){
                   Navigator.pop(context);
                  }),
                 const SizedBox(height: 20,),
                // 
                ],
              ),
            ),
          );
  }



  RangeSlider RangersSlider() {
    return RangeSlider(
          values: _currentRangeValues,
          min: Min ,
          max: Max,
          
          divisions: Divisions,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
             // Divisions=_currentRangeValues.end as int;
              
            });
          },
        );
  }
}
