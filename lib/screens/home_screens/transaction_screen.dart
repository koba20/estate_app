import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:estate_app/constants.dart';
import 'package:estate_app/widgets/transactionlist.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
    ];
    String? selectedValue;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          'Transaction History',
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
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff4285F4),
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      height: 40,
                      width: 80,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
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
