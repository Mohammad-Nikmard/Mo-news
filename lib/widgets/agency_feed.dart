import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

class Agencies extends StatelessWidget {
  const Agencies(
      {super.key, required this.agencynames, required this.agencyimages});
  final String agencynames;
  final String agencyimages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, left: 20),
      child: Container(
        height: 160,
        width: 133,
        decoration: const BoxDecoration(
          color: LightColors.whiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              spreadRadius: -10,
              blurRadius: 25,
              color: LightColors.greyColor,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("images/$agencyimages"),
            const SizedBox(
              height: 10,
            ),
            Text(
              agencynames,
              style: const TextStyle(
                fontFamily: "SM",
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              width: 101,
              decoration: const BoxDecoration(
                color: LightColors.lightPinkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  "دنبال کردن",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: 14,
                    color: LightColors.redColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
