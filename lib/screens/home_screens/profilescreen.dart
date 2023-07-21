import 'package:estate_app/screens/home_screens/edit_profile.dart';
import 'package:estate_app/screens/home_screens/transaction_screen.dart';
import 'package:estate_app/screens/settings_screen.dart/chang_pinpassword.dart';
import 'package:estate_app/screens/settings_screen.dart/contactlistscreen.dart';
import 'package:estate_app/screens/settings_screen.dart/faqs_screen.dart';
import 'package:estate_app/screens/settings_screen.dart/termsandcondition.dart';
import 'package:estate_app/widgets/settingslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 120, // Set this height
        flexibleSpace: Container(
          color: const Color(0xff4285F4),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 41.5, 25, 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(
                      width: 63.34,
                    ),
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
                  ],
                ),
                Row(
                  children: [
                    const Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Frame 2.png'),
                          radius: 25,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 15,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'John Doe',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen(),));
                      },
                      child: Container(
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffFFffff), width: 2),
                            borderRadius: BorderRadius.circular(7)),
                        child: const Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Settings',
                    hintStyle:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              const SizedBox(
                height: 30,
              ),
              SettingListItem(
                ontap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const TransactionScreen(),
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
                text: 'Transaction History',
                svgimage: 'History',
              ),
              const SizedBox(
                height: 20,
              ),
              const SettingListItem(
                text: 'Notification',
                svgimage: 'Notification',
              ),
              const SizedBox(
                height: 20,
              ),
              SettingListItem(
                ontap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ChangePasswordPin(),
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
                text: 'Password/PIN',
                svgimage: 'Lock',
              ),
              const SizedBox(
                height: 20,
              ),
              SettingListItem(
                ontap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return const HelpSupportModal();
                      });
                },
                text: 'Help & Support',
                svgimage: 'Headset',
              ),
              const SizedBox(
                height: 20,
              ),
              SettingListItem(
                ontap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const TermsAndConditions(),
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
                text: 'Terms & Conditions',
                svgimage: 'Clipboard-alt',
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                elevation: 0,
                color: const Color(0xffFF0000),
                disabledColor: Colors.blue.shade200,
                disabledTextColor: Colors.white.withOpacity(.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: const Text('Logout',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class HelpSupportModal extends StatelessWidget {
  const HelpSupportModal({
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const Spacer(),
              SvgPicture.asset('assets/svg/Vector-4.svg')
            ],
          ),
          const Text(
            'Help & Support',
            style: TextStyle(
                color: Color(0xff545454),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 30,
          ),
          SettingListItem(
            ontap: () {
              Navigator.of(context).push(PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 200),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    ExpandableListScreen(),
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
            text: 'FAQ',
            svgimage: 'Document',
          ),
          const SizedBox(
            height: 20,
          ),
          SettingListItem(
            ontap: () {
              Navigator.of(context).push(PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 200),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const ContactListScreen(),
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
            text: 'Contact',
            svgimage: 'Phone',
          ),
        ]),
      ),
    );
  }
}
