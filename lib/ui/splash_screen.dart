import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: LightColors.whiteColor,
        image: DecorationImage(
          image: AssetImage("images/splash_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                child: Image.asset("images/splash_icon.png"),
              ),
              const Positioned(
                bottom: 20,
                child: Column(
                  children: [
                    Text(
                      "توسعه",
                      style: TextStyle(
                        fontFamily: "SM",
                        fontSize: 12,
                        color: LightColors.greyColor,
                      ),
                    ),
                    Text(
                      "MohammadNikmard",
                      style: TextStyle(
                        fontFamily: "SM",
                        fontSize: 12,
                        color: LightColors.redColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
