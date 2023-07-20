import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FamilyMemberScreen extends StatefulWidget {
  const FamilyMemberScreen({super.key});

  @override
  State<FamilyMemberScreen> createState() => _FamilyMemberScreenState();
}

class _FamilyMemberScreenState extends State<FamilyMemberScreen> {
  @override
  Widget build(BuildContext context) {

    final List<String> items = [
      'Male',
      'Female',
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
          'My Profile'
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return const FamilyMembersModal();
                      }
                    );
                  }, 
                  child: const Text(
                    'Existing Family Member',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline
                    ),
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                "Basic Information",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'First Name'
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintText: 'Peter',
                            hintStyle:
                                const TextStyle(fontSize: 15, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(color: Colors.grey
                              )
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Last Name'
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintText: 'Omiwole',
                            hintStyle:
                                const TextStyle(fontSize: 15, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(color: Colors.grey
                              )
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Text(
                'Phone Number'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'Omiwole',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Email Address'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'fredstaps@yahoo.com',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Gender'
              ),
              const SizedBox(height: 10,),
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
                        'Male',
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
              const SizedBox(height: 15,),
              const Text(
                'House Address'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'Unit 4, Flat 6',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Meter Number'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: '217593471947',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                "Vehicle Information",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Make'
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintText: 'Ford',
                            hintStyle:
                                const TextStyle(fontSize: 15, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(color: Colors.grey
                              )
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Model'
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            hintText: 'F-150',
                            hintStyle:
                                const TextStyle(fontSize: 15, color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(color: Colors.grey
                              )
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Text(
                'Colour'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'Green',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Plate Number'
              ),
              const SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'G7W-341',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
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


class FamilyMembersModal extends StatelessWidget {
  const FamilyMembersModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 337,
      width: double.infinity,
      //margin: EdgeInsets.fromLTRB(7, 0, 7, 7),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            const Text(
              'Family Members',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'John Doe'
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.blue,
                  elevation: 0,
                  child: const Row(
                    children: [
                      Icon(Icons.edit, color: Colors.white,),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: 0,
                  child: const Row(
                    children: [
                      Icon(Icons.delete, color: Colors.white,),
                      Text(
                        'Remove',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Text(
                  'John Doe'
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.blue,
                  elevation: 0,
                  child: const Row(
                    children: [
                      Icon(Icons.edit, color: Colors.white,),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 5,),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: 0,
                  child: const Row(
                    children: [
                      Icon(Icons.delete, color: Colors.white,),
                      Text(
                        'Remove',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
