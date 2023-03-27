import 'package:flutter/material.dart';

import '../components/container_image.dart';
import '../components/title.dart';
import '../styles/colors.dart';

class BuildListCartProduct extends StatelessWidget {
  const BuildListCartProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return myContainerProduct(
              width: double.infinity,
              height: 160,
              child: Row(
                children: [
                  myContainerProduct(
                      height: 160,
                      width: 130,
                      child: Image.asset('assets/images/cat1.png'),
                      backgroundColor: MyColors.fillcolor),
                  
                  SizedBox(
                    width: 20,
                  ),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Air Zoom',
                        style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'USD 650',
                        style: TextStyle(
                          color: MyColors.textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColors.primaryColor,
                            radius: 20,
                            child: Center(
                                child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: MyColors.white,
                              ),
                              onPressed: () {},
                            )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          startTitle(text: '1'),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(30, 40),
                                backgroundColor: Colors.white,
                                  shape: CircleBorder(
                                side: BorderSide(
                                  color: MyColors.primaryColor,
                                  width: 2.0,
                                ),
                              )),
                              child: Icon(
                                Icons.minimize,
                                color: MyColors.primaryColor,
                              ))
                        ],
                      ),
                    ],
                  )
                , 
                Spacer(),
                   myContainerProduct(
                      height: 100,
                      width: 70,
                      radius: 30,
                      child: Center(child: Icon(Icons.delete_forever_outlined,color: MyColors.white,)),
                      backgroundColor: MyColors.red),
                  

                 
                ],
              ),
              backgroundColor: MyColors.white);
  }
}