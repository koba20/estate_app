import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 550),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.sora(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Text(
                    'Welcome Here!👋🏻',
                    style: GoogleFonts.sora(
                        fontSize: 27, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Enter your name and password',
                    style:
                        GoogleFonts.sora(color: Colors.black.withOpacity(.5)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Email',
                    style: GoogleFonts.sora(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const SizedBox(
                    height: 15,
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
                        hintText: '**********',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Retype Password',
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
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "By continuing, you accept our",
                          style: GoogleFonts.sora(
                              color: Colors.black.withOpacity(.5))),
                      TextSpan(
                          text: " Terms of Services",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w500, color: Colors.blue)),
                      TextSpan(
                          text: " and",
                          style: GoogleFonts.sora(
                              color: Colors.black.withOpacity(.5))),
                      TextSpan(
                          text: " Privacy Policy",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w500, color: Colors.blue)),
                    ]),
                  ),
                  const SizedBox(height: 25),
                  MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    elevation: 0,
                    focusElevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue.shade700,
                    disabledColor: Colors.blue.shade200,
                    disabledTextColor: Colors.white.withOpacity(.5),
                    onPressed: () {},
                    child: Text('Create Account',
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Already have an account?",
                              style: GoogleFonts.sora(
                                  color: Colors.black.withOpacity(.5))),
                          TextSpan(
                              text: " Login",
                              style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue)),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
