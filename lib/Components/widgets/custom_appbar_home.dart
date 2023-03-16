import 'package:flutter/material.dart';
import 'package:shop_app/Components/components/title.dart';
import 'package:shop_app/Components/styles/colors.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: MyColors.gray50,
            child: CircleAvatar(
              radius: 29,
              backgroundColor: MyColors.white,
              child: Center(
                  child: IconButton(
                icon: Icon(Icons.apps, color: MyColors.textPrimary, size: 30),
                onPressed: () {},
              )),
            ),
          ),
          myTitle(text: 'HOME'),
          Container(
            width: 140,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: MyColors.gray50,
                  width: 2.0,
                )),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(30, 50),
    
                    elevation: 0.0,
                    backgroundColor: MyColors.yellow,
                    shape: const CircleBorder(), //<-- SEE HERE
                    padding: const EdgeInsets.only(left: 2),
                  ),
                  child: Center(
                    child: Icon(
                      //<-- SEE HERE
                      Icons.sunny,
                      color: MyColors.white,
                      size: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(30, 50),
                    elevation: 0.0,
                    backgroundColor: MyColors.white,
                    shape: const CircleBorder(), //<-- SEE HERE
                    padding: const EdgeInsets.all(10),
                  ),
                  child: Center(
                    child: Icon(
                      //<-- SEE HERE
                      Icons.dark_mode,
                      color: MyColors.textSecondary,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
