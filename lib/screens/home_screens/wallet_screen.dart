import 'package:estate_app/constants.dart';
import 'package:estate_app/widgets/transactionlist.dart';
import 'package:estate_app/widgets/walletcard.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          'My Wallet',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: Transform.scale(
          scale: 0.7,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                )),
          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 33), children: [
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // Add scrollable content here
            // Center(child: SvgPicture.asset('assets/svg/padlock.svg')),

            WalletCard(
              icon: Icons.wallet,
              bigText: 'Wallet Balance',
              amount: '150,500',
              walletscreen: true,
              walletscreentext1: 'Top Up',
              walletscreentext2: 'Withdraw',
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1A1A1A)),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4285F4)),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: listitems.length,
              itemBuilder: (BuildContext context, int index) {
                final transaction = listitems[index];
                return TransactionListItem(
                  bigText: transaction['bigText'],
                  time: transaction['time'],
                  date: transaction['date'],
                  amount: transaction['amount'],
                  svgimage: transaction['svg'],
                );
              },
            )
          ],
        ),
      ]),
    );
  }
}
