import 'package:flutter/material.dart';
import 'package:shop_app/Components/styles/styles.dart';

class CustomRemember extends StatefulWidget {
  const CustomRemember({super.key});

  @override
  State<CustomRemember> createState() => _CustomRememberState();
}

class _CustomRememberState extends State<CustomRemember> {
  bool isClicked=true;
  @override
  void initState() {
    super.initState();
    isClicked=true;

  }
  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              IconButton(onPressed: (){
                isClicked=!isClicked;
                setState(() {
                  
                });
              }, icon:  isClicked? const Icon(Icons.check_circle,color: Colors.grey,):
              const Icon(Icons.check_circle,color: Colors.blue,)
              ),
              const SizedBox(width: 5,),
              Text('Remember me',style: Styles.style21.copyWith(
                fontSize: 18
              ),)
            ],
          );
  }
}