import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_news/constants/constants.dart';
import 'package:mo_news/widgets/fav_news_widget.dart';
import 'package:mo_news/widgets/hot_news_widget.dart';

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
                    SuggestionTab(),
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

class SuggestionTab extends StatelessWidget {
  const SuggestionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 35, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "مشاهده بیشتر",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: ScreenUtil().setSp(12),
                    color: LightColors.redColor,
                  ),
                ),
                Text(
                  "خبر های داغ",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 324,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: HotNewsWidget(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: HotNewsWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "مشاهده بیشتر",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: ScreenUtil().setSp(12),
                    color: LightColors.redColor,
                  ),
                ),
                Text(
                  "خبر هایی که علاقه داری",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FavNewsWidget(),
              );
            },
            childCount: 2,
          ),
        ),
      ],
    );
  }
}
