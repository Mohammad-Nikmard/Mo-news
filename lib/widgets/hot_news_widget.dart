import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

class HotNewsWidget extends StatelessWidget {
  const HotNewsWidget({
    super.key,
    required this.image,
    required this.label,
    required this.title,
    required this.agency,
    required this.agencyImage,
  });
  final String image;
  final String label;
  final String title;
  final String agency;
  final String agencyImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          height: 294,
          width: 279,
          decoration: const BoxDecoration(
            color: LightColors.whiteColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                spreadRadius: -10,
                blurRadius: 25,
                color: LightColors.greyColor,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 159,
                    width: 271,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('images/$image'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 28,
                      width: 58,
                      decoration: BoxDecoration(
                        color: LightColors.redColor.withOpacity(0.5),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          label,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "5 دقیقه قبل",
                      style: TextStyle(
                        fontFamily: "SM",
                        fontSize: 10,
                        color: LightColors.greyColor,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    Row(
                      children: [
                        const Text(
                          "پیشنهاد مونیوز",
                          style: TextStyle(
                            fontFamily: "SM",
                            fontSize: 10,
                            color: LightColors.greyColor,
                          ),
                        ),
                        const SizedBox(width: 7),
                        Image.asset(
                          "images/flash_circle_light.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("images/short-Menu.png"),
                    Row(
                      children: [
                        Text(
                          agency,
                          style: const TextStyle(
                            fontFamily: "SM",
                            fontSize: 10,
                            color: LightColors.greyColor,
                          ),
                        ),
                        const SizedBox(width: 7),
                        Image.asset(
                          "images/$agencyImage",
                          height: 15,
                          width: 16,
                        ),
                      ],
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
