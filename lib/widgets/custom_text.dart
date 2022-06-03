import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   String? text;
   double? size;
   Color? color;
   FontWeight? weight;

   CustomText({Key? key, this.text, this.size, this.color, this.weight}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text!,style: TextStyle(fontSize: size ?? 16, color: color ?? Colors.black, fontWeight: weight ?? FontWeight.normal),
    );
  }
}
