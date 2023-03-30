
  import 'package:flutter/material.dart';

import '../styles/colors.dart';

showAlertDialog(BuildContext context,{
    required String cancel,
    required String remove,
     required String messge,

  }) async {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text(cancel,style: TextStyle(color: MyColors.grayText),),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text(remove,style: TextStyle(color: MyColors.red),),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    // "Are your sure you wanna remove this item?"
    content:Text( messge),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
// 