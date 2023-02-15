import 'dart:async';

import 'package:cricstreamer/constants/colors.dart';
import 'package:cricstreamer/screeens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.push(
          this.context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: <Color>[green_light, green_dark],
              ),
            ),
          ),
         const Text(
            "CRIC \nSTREAMER",
            style: green_style2,
          ),
        ],
      ),
    );
  }
}
