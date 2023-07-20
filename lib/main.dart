import 'package:estate_app/screens/home_screens/edit_profile.dart';
import 'package:estate_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screens/bills_screen.dart';
import 'screens/home_screens/familyMember_screen.dart';
import 'screens/home_screens/wallet_screen.dart';

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
          scaffoldBackgroundColor: const Color(0xffF4F5FF),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen()
    );
  }
}
