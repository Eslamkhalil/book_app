
import 'package:flutter/material.dart';


String? token;
void logOut(BuildContext context){}

void navigateTo ({required context, required Widget widget}){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>widget));
}

void navigateAndFinish({required context, required Widget widget}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
          (Route<dynamic> route) => false);
}

Widget myDivider() => Container(
  width: double.infinity,
  height: 1.0,
  color: Colors.grey[300],
);
