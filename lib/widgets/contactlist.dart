import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactListItem extends StatelessWidget {
  final String contactname;
  final String contactdetails;

  final String svgimage;
  const ContactListItem(
      {super.key,
      required this.contactname,
      required this.contactdetails,
      required this.svgimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          horizontalTitleGap: 5,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Color(0xffDEE1FC),
                  child: SvgPicture.asset('assets/svg/$svgimage.svg')),
            ],
          ),
          title: Text(
            contactname,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            contactdetails,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff555555)),
          ),
        ),
        Divider()
      ],
    );
  }
}
