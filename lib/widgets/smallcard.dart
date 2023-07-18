import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallCardWidget extends StatelessWidget {
  final String svgname;
  final String smalltext;
  final Color firstgradientcolor;
  final Color secondgradientcolor;
  final Color firstboxshadowcolor;
  final Color secondboxshadowcolor;
  final Color? color;
  const SmallCardWidget(
      {super.key,
      required this.svgname,
      required this.smalltext,
      required this.firstgradientcolor,
      required this.secondgradientcolor,
      required this.firstboxshadowcolor,
      required this.secondboxshadowcolor,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: smalltext != 'Issues'
            ? LinearGradient(
                //center: const Alignment(0.1685, 0.1292),
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  firstgradientcolor,
                  secondgradientcolor
                  //Color(0xFF659EFC),
                  //Color(0xFF03C336),
                ],
                stops: [0.0719, 1.0],
              )
            : null,
        color: smalltext == 'Issues' ? color : null,
        boxShadow: [
          BoxShadow(
            //color: Color(0xFF45BE66).withOpacity(0.4),
            color: firstboxshadowcolor.withOpacity(0.4),
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 0,
          ),
          BoxShadow(
            //color: Color(0xFF4285F4).withOpacity(0.4),
            color: secondboxshadowcolor.withOpacity(0.4),
            offset: Offset(1, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
                'assets/svg/$svgname.svg'), // Replace with your SVG image
            Text(
              smalltext,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
