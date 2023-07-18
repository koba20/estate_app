import 'package:estate_app/screens/auth_screens/login_screen.dart';
import 'package:estate_app/screens/home_screens/transaction_screen.dart';
import 'package:estate_app/screens/home_screens/wallet_screen.dart';
import 'package:estate_app/screens/settings_screen.dart/chang_pinpassword.dart';
import 'package:estate_app/screens/settings_screen.dart/contactlistscreen.dart';
import 'package:estate_app/screens/settings_screen.dart/faqs_screen.dart';
import 'package:estate_app/screens/settings_screen.dart/termsandcondition.dart';
import 'package:estate_app/screens/splash_screen.dart';
import 'package:estate_app/widgets/walletcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.sora().fontFamily,
          scaffoldBackgroundColor: Color(0xffF4F5FF),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
