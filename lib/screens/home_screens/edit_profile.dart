import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:estate_app/screens/home_screens/familyMember_screen.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FamilyMemberScreen()));
                },
                child: const Text(
                  '+ Add Family Member',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
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