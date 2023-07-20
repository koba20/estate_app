import 'package:estate_app/screens/home_screens/wallet_screen.dart';
import 'package:estate_app/widgets/matButton.dart';
import 'package:flutter/material.dart';

import '../screens/home_screens/bills_screen.dart';

class WalletCard extends StatelessWidget {
  final IconData icon;
  final String bigText;
  final String amount;
  final String? walletscreentext1;
  final String? walletscreentext2;
  final bool? walletscreen;
  const WalletCard(
      {super.key,
      required this.icon,
      required this.bigText,
      required this.amount,
      this.walletscreentext1,
      this.walletscreentext2,
      this.walletscreen = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 362,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        gradient: LinearGradient(
          //center: const Alignment(0.1685, 0.1292),
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFBFF41),
            Color(0xFFF7A000),
          ],
          stops: [0.0719, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFA5A5A5).withOpacity(0.4),
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFFBFF41).withOpacity(0.4),
            offset: Offset(1, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 52, vertical: 20),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                Icon(icon),
                Text(
                  bigText,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff545454)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      ' N${amount}.00',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff545454)),
                    ),
                    Icon(Icons.remove_red_eye_outlined)
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          walletscreen == true
              ? Row(
                  children: [
                    Expanded(
                        child:
                            MatButton(ontap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return const BillsModal();
                                }
                              );
                            }, text: walletscreentext1!)),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(color: Color(0xff4285F4))),
                            child: Center(
                                child: Text(
                              walletscreentext2!,
                              style: TextStyle(
                                  color: Color(0xff4285F4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ))))
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: MatButton(
                    ontap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 200),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            WalletScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ));
                    },
                    text: 'Go to Wallet',
                    textstyle: TextStyle(color: Colors.white),
                  ),
                ),
        ]),
      ),
    );
  }
}
