import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_news/constants/constants.dart';

class FavNewsWidget extends StatelessWidget {
  const FavNewsWidget(
      {super.key,
      required this.label,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.agency,
      required this.agencyImage});
  final String title;
  final String subtitle;
  final String label;
  final String image;
  final String agency;
  final String agencyImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        height: 132,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: LightColors.whiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              color: LightColors.greyColor,
              spreadRadius: -10,
              blurRadius: 25,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Text(
                              title,
                              style: Theme.of(context).textTheme.titleMedium,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Flexible(
                            child: Text(
                              subtitle,
                              style: Theme.of(context).textTheme.bodySmall,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/short-Menu.png"),
                          Row(
                            children: [
                              Text(
                                agency,
                                style: TextStyle(
                                  fontFamily: "SM",
                                  fontSize: ScreenUtil().setSp(10),
                                  color: LightColors.greyColor,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              const SizedBox(width: 7),
                              Image.asset(
                                "images/$agencyImage",
                                height: ScreenUtil().setHeight(16),
                                width: ScreenUtil().setWidth(16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  Container(
                    height: 116,
                    width: 116,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/$image"),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
