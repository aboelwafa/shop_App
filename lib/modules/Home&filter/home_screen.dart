import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/colors.dart';
import 'package:shop_app/Components/widgets/my_drawer.dart';
import '../../Components/widgets/body_home_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: const BodyHomeScreen(),
      drawer: myDrawer(size: size),
    );
  }
}
