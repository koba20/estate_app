import 'package:flutter/material.dart';

class MatButton extends StatelessWidget {
  final void Function() ontap;
  final String text;
  final TextStyle? textstyle;
  const MatButton(
      {super.key, required this.ontap, required this.text, this.textstyle});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 0,
      color: Color(0xff4285F4),
      disabledColor: Colors.blue.shade200,
      disabledTextColor: Colors.white.withOpacity(.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: ontap,
      child: Text(text, style: textstyle),
    );
  }
}
