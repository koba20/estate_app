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
            MatButton(ontap: () {
              showModalBottomSheet<void>(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return const NewPasswordModal();
                }
              );
            }, text: 'New Password'),
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


class NewPasswordModal extends StatelessWidget {
  const NewPasswordModal({
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
              'Create a pin for authorizing transaction',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                hintText: '* * * *',
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
                'Change PIN',
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
