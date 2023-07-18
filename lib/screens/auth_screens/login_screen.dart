import 'package:estate_app/screens/auth_screens/forgot_password_screen.dart';
import 'package:estate_app/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signUp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
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
                      'Login',
                      style: GoogleFonts.sora(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Text(
                    'Welcome back!👋🏻',
                    style: GoogleFonts.sora(
                        fontSize: 27, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Hello again, you have been missed!',
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
                        hintText: 'Enter Password',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Remember me',
                        style: GoogleFonts.sora(),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 200),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const ForgotPasswordScreen(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                          child: Text(
                            'Forgot Password',
                            style: GoogleFonts.sora(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ],
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
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 200),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            BottomNavBar(),
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
                    child: Text('Sign in',
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
                        Navigator.of(context).push(PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 200),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const SignUpScreen(),
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
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: GoogleFonts.sora(
                                  color: Colors.black.withOpacity(.5))),
                          TextSpan(
                              text: " Sign up",
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
