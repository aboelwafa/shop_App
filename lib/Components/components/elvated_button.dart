import 'package:flutter/material.dart';

import '../styles/colors.dart';

Widget myElevatedButton({
  IconData? icon,
  Color? colorIcon,
  double? sizeIcon,
  Color? backgroundColor,
  void Function()? onPressed
})=>ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(30, 50),
                    elevation: 0.0,
                    backgroundColor: backgroundColor,
                    shape:  CircleBorder(
                      side: BorderSide(
                        color: MyColors.fillcolor,
                        width: 2.0,
                      )
                    ), //<-- SEE HERE
                    padding: const EdgeInsets.all(10),

                  ),
                  child: Center(
                    child: Icon(
                      //<-- SEE HERE
                      icon,
                      color: colorIcon,
                      size: sizeIcon,
                    ),
                  ),
                );