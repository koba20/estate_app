import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionListItem extends StatelessWidget {
  final String bigText;
  final String time;
  final String date;
  final String amount;
  final String svgimage;
  const TransactionListItem(
      {super.key,
      required this.bigText,
      required this.time,
      required this.date,
      required this.amount,
      required this.svgimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              visualDensity: VisualDensity(horizontal: -2, vertical: -2)),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            horizontalTitleGap: 0.5,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/$svgimage.svg'),
              ],
            ),
            title: Text(
              bigText,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            subtitle: Row(
              children: [
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff828282)),
                ),
                Text(
                  date,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4285F4)),
                )
              ],
            ),
            trailing: Text(
              amount,
              style: TextStyle(
                  color: amount.contains('+') ? Colors.green : Colors.red),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
