import 'package:estate_app/widgets/matButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordPin extends StatefulWidget {
  const ChangePasswordPin({super.key});

  @override
  State<ChangePasswordPin> createState() => _ChangePasswordPinState();
}

class _ChangePasswordPinState extends State<ChangePasswordPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          'Change Password',
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 23.5,
            ),
            MatButton(ontap: () {}, text: 'New Password'),
            const SizedBox(
              height: 20,
            ),
            MatButton(ontap: () {}, text: 'New Pin'),
            SvgPicture.asset('assets/svg/padlock.svg')
          ],
        ),
      )),
    );
  }
}
