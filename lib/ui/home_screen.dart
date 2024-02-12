import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_news/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset("images/app_bar_icon.png"),
          leading: Image.asset("images/icon_notification.png"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        ScreenUtil().radius(15),
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(20),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().radius(15)),
                      ),
                      color: LightColors.redColor,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: LightColors.whiteColor,
                    unselectedLabelColor: LightColors.greyColor,
                    unselectedLabelStyle: TextStyle(
                      fontFamily: "SM",
                      fontSize: ScreenUtil().setSp(13),
                    ),
                    labelStyle: TextStyle(
                      fontFamily: "SM",
                      fontSize: ScreenUtil().setSp(13),
                    ),
                    tabs: const [
                      Tab(
                        text: "دنبال میکنید",
                      ),
                      Tab(
                        text: "پیشنهادی",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(),
                    Center(
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
