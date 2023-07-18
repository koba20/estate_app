import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool isLoading = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

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
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 550,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75,
                ),
                const Text(
                  'Change your password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Enter new password',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.sora(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye)),
                      hintText: 'Retype Password',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ' Retype Password',
                  style: GoogleFonts.sora(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: retypePasswordController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye)),
                      hintText: 'Retype Password',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  elevation: 0,
                  color: Colors.blue.shade700,
                  disabledColor: Colors.blue.shade200,
                  disabledTextColor: Colors.white.withOpacity(.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: const Text('Update password',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
