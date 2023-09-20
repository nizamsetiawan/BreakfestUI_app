import 'package:breakfast/config/app.color.dart';
import 'package:breakfast/pages/details_page.dart';
import 'package:breakfast/pages/home_page.dart';
import 'package:breakfast/pages/intro_page.dart';
import 'package:breakfast/pages/singin_page.dart';
import 'package:breakfast/pages/singup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'config/app.color.dart';
import 'config/app.route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.black),
        scaffoldBackgroundColor: AppColor.secondary,
      ),
      home: const IntroPage(),
      routes: {
        AppRoute.intropage: (context) => const IntroPage(),
        AppRoute.singinpage: (context) => const SinginPage(),
        AppRoute.singuppage: (context) => const SingupPage(),
        AppRoute.homepage: (context) => HomePage(),
        AppRoute.detailspage: (context) => DetailsPage(),
      },
    );
  }
}
