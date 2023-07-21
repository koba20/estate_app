import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddIssueScreen extends StatefulWidget {
  const AddIssueScreen({super.key});

  @override
  State<AddIssueScreen> createState() => _AddIssueScreenState();
}

class _AddIssueScreenState extends State<AddIssueScreen> {
  // create TimeOfDay variable
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);

  // show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
    ];
    String? selectedValue;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Issues',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select Category'),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Text(
                      'Item',
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
              const SizedBox(
                height: 20,
              ),
              const Text('Describe Complaint'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintStyle:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Add Evidence'),
              const SizedBox(
                height: 10,
              ),
              DottedBorder(
                dashPattern: const [
                  6,
                  10,
                ],
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 30,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('When do you want your issue resolved'),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _showTimePicker,
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(Icons.timelapse),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        _timeOfDay.format(context).toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _date,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey)),
                  icon: const Icon(Icons.calendar_today_rounded),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));

                  if (pickedDate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
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
                child: const Text('Continue',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
