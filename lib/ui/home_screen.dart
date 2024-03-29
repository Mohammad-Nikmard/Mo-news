import 'package:animations/animations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_news/constants/constants.dart';
import 'package:mo_news/ui/news_detail_screen.dart';
import 'package:mo_news/widgets/fav_news_widget.dart';
import 'package:mo_news/widgets/hot_news_widget.dart';
import 'package:flutter/material.dart';

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
                    const SuggestionTab(),
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
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 35, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "مشاهده بیشتر",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: 12,
                    color: LightColors.redColor,
                  ),
                ),
                Text(
                  "خبر های داغ",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: 16,
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: OpenContainer(
                        closedColor: Colors.transparent,
                        openElevation: 0,
                        closedElevation: 0,
                        openColor: Colors.transparent,
                        transitionType: ContainerTransitionType.fade,
                        transitionDuration: const Duration(milliseconds: 500),
                        openBuilder: (context, action) =>
                            const NewsDetailScreen(),
                        closedBuilder: (context, action) => const HotNewsWidget(
                          title:
                              "پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید!",
                          image: "cover1.png",
                          label: "ورزشی",
                          agency: "خبرگذاری ورزش سه",
                          agencyImage: "page_cover3.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: OpenContainer(
                        closedColor: Colors.transparent,
                        openElevation: 0,
                        closedElevation: 0,
                        openColor: Colors.transparent,
                        transitionType: ContainerTransitionType.fade,
                        transitionDuration: const Duration(milliseconds: 500),
                        openBuilder: (context, action) =>
                            const NewsDetailScreen(),
                        closedBuilder: (context, action) => const HotNewsWidget(
                          title:
                              "استقلال یک - صنعت‌نفت صفر: حفظ صدر با یک سوپرگل",
                          image: "cover2.jpg",
                          label: "ورزشی",
                          agency: "خبرگذاری ورزش سه",
                          agencyImage: "page_cover3.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "مشاهده بیشتر",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: 12,
                    color: LightColors.redColor,
                  ),
                ),
                Text(
                  "خبر هایی که علاقه داری",
                  style: TextStyle(
                    fontFamily: "SM",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FavNewsWidget(
                  title:
                      "مارک زاکربرگ: اپل توسعه رقیبی برای اپ استور در اتحادیه اروپا را بسیار دشوار کرده است",
                  subtitle:
                      "علاوه‌بر اسپاتیفای، اپیک گیمز و مایکروسافت حالا شرکت متا نیز به منتقدان سیاست‌های جدید اپل پیوست.",
                  image: "fav_cover1.jpg",
                  label: "تکنولوژی",
                  agency: "دیجیاتو",
                  agencyImage: "page_cover2.png",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FavNewsWidget(
                  title:
                      "ویوو V30 معرفی شد؛ اولین گوشی بازار با اسنپدراگون 7 نسل 3",
                  subtitle:
                      "این گوشی از یک باتری بزرگ 5000 میلی‌آمپرساعتی برخوردار است.",
                  image: "fav_cover2.jpg",
                  label: "تکنولوژی",
                  agency: "زومیت",
                  agencyImage: "page_cover1.png",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
