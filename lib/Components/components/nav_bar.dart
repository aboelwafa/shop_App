// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:shop_app/Components/constants/app_router.dart';
import '../styles/colors.dart';
import 'package:go_router/go_router.dart';
class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});
  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        padding: const EdgeInsets.only(left: 5, right: 20),
        decoration: BoxDecoration(
            color: MyColors.textPrimary,
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           CircleAvatar(
                  radius: 30,
                  backgroundColor:
                     MyColors.white ,
                  child: Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: MyColors.primaryColor,
                  )),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.KDiscoverScreen);
                      },
                      child: Icon(
                        Icons.explore,
                        size: 30,
                        color: MyColors.primaryColor,
                      ),
                    ),
                     Icon(
                      Icons.favorite_outline,
                      size: 30,
                      color: MyColors.primaryColor,
                    ),
                     Icon(
                      Icons.message_outlined,
                      size: 30,
                      color: MyColors.primaryColor,
                    ),
                     Icon(
                      Icons.person,
                      size: 30,
                      color: MyColors.primaryColor,
                    )
          ],
        ));
  }
}
