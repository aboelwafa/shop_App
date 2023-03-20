// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_app/modules/Home&filter/details_screen.dart';
import 'package:shop_app/modules/Home&filter/discover_screen.dart';
import 'package:shop_app/modules/Home&filter/home_screen.dart';

part 'my_home_state.dart';

class MyHomeCubit extends Cubit<MyHomeState> {
  MyHomeCubit() : super(MyHomeInitial());
  static MyHomeCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  
  List<Widget> bottomScreen=
  [
    const HomeScreen(),
    const DiscoverScreen(),
    const DetailsScreen(),
  ];

  void changeBottom(int index)
  {
    currentIndex=index;
    emit(ChangeBottomState());
  }
}
