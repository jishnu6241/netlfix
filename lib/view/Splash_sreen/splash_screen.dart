import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netlfix/utils/color_constant.dart';
import 'package:netlfix/utils/image_constant.dart';
import 'package:netlfix/view/Username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const UserName(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.mainblack,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.netflixPrimeryLogo,
                scale: 9,
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(
                color: ColorConstant.mainred,
              )
            ],
          ),
        ));
  }
}
