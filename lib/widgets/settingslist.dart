import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingListItem extends StatelessWidget {
  final String text;
  final String svgimage;
  final void Function()? ontap;
  const SettingListItem({
    super.key,
    required this.text,
    required this.svgimage,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 80.66,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xff4285F4), width: 1),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: [
                SvgPicture.asset('assets/svg/$svgimage.svg'),
                SizedBox(
                  width: 18.25,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ]),
            ),
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
