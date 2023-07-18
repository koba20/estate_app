import 'package:estate_app/constants.dart';
import 'package:estate_app/widgets/smallcard.dart';
import 'package:estate_app/widgets/transactionlist.dart';
import 'package:estate_app/widgets/walletcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 390, // Set the desired height for the non-scrollable part

              child: Stack(children: [
                Container(
                  color: const Color(0xff4285F4),
                  height: 293,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 33, vertical: 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/homeimage.svg',
                                ),
                                const Text(
                                  'Estate Lead',
                                  style: TextStyle(
                                      color: Color(0xff45BE66),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/Frame 2.png'),
                                  radius: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hello John',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Welcome back!',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 146,
                                  height: 52,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffFF0000),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.warning_amber,
                                        color: Color(0xffFF0000),
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Emergency',
                                        style: TextStyle(
                                            color: Color(0xffFF0000),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width * 0.08,
                  child: const WalletCard(
                      icon: Icons.wallet,
                      bigText: 'Wallet Balance',
                      amount: '150,500'),
                )
              ]),
            ),
            Container(
              height: 500,
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 33),
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // Add scrollable content here
                        // Center(child: SvgPicture.asset('assets/svg/padlock.svg')),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallCardWidget(
                              svgname: 'Card',
                              smalltext: 'Bills',
                              secondgradientcolor: Color(0xFF03C336),
                              firstboxshadowcolor: Color(0xFF45BE66),
                              firstgradientcolor: Color(0xFF659EFC),
                              secondboxshadowcolor: Color(0xFF4285F4),
                            ),
                            SmallCardWidget(
                              svgname: 'Icon',
                              smalltext: 'Issues',
                              secondgradientcolor: Color(0xFFFFA500),
                              firstboxshadowcolor: Color(0xFFFFA500),
                              firstgradientcolor: Color(0xFFFF0000),
                              secondboxshadowcolor: Color(0xFFFF0000),
                              color: Color(0xfffa9169),
                            ),
                            SmallCardWidget(
                              svgname: 'Unlock',
                              smalltext: 'Bills',
                              secondgradientcolor: Color(0xFF800080),
                              firstboxshadowcolor: Color(0xFF800080),
                              firstgradientcolor: Color(0xFF4285F4),
                              secondboxshadowcolor: Color(0xFF4285F4),
                            ),
                          ],
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
            ),
          ],
        ),
      ),
    );
  }
}
