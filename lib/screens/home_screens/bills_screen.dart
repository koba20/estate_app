import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class BillsScreen extends StatefulWidget {
  const BillsScreen({super.key});

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  @override
  Widget build(BuildContext context) {

    final List<String> items = [
      'Item1',
      'Item2',
    ];
    String? selectedValue;

    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Bills'
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){}, 
                child: const Text(
                  'Select all Bills'
                )
              ),
              const Divider(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.home),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Service Charge'
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '#250,000'
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.light),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Power'
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                isExpanded: true,
                                hint: const Text(
                                  'Enter amount',
                                  style: TextStyle(
                                    fontSize: 14,
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              RichText(
                text: const TextSpan(
                  text: 'Total: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                  children: [
                    TextSpan(
                      text: '#430,000.00'
                    )
                  ]
                )
              ),
              const SizedBox(height: 30,),
              const Text(
                'Choose where to debit from'
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wallet),
                          SizedBox(width: 7,),
                          Text(
                            'From Wallet'
                          )
                        ],
                      ),
                    )
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(width: 7,),
                          Text(
                            'From Card'
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                elevation: 0,
                color: Colors.blue,
                disabledColor: Colors.blue.shade200,
                disabledTextColor: Colors.white.withOpacity(.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return const BillsModal();
                    }
                  );
                },
                child: const Text(
                  'Make Payment',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class BillsModal extends StatelessWidget {
  const BillsModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 337,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            const Text(
              'Pay with Card',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'Amount',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              '#450,000.00',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15,),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.blue,
              disabledColor: Colors.blue.shade200,
              disabledTextColor: Colors.white.withOpacity(.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: const Text(
                'Pay with', //Download Paystack Logo
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
              ),
            ),
            const SizedBox(height: 15,),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.green,
              disabledColor: Colors.blue.shade200,
              disabledTextColor: Colors.white.withOpacity(.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: const Text(
                'Pay with', //Download Flutterwave Logo
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}
