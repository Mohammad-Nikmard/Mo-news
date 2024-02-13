import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:mo_news/constants/constants.dart';
import 'package:mo_news/widgets/agency_feed.dart';
import 'package:mo_news/widgets/hot_news_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: const Color(0xffEEEEEE),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 20, left: 20, bottom: 25),
                  child: Image.asset("images/boarder.png"),
                ),
              ),
              const FeedLables(),
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
                        "خبرگزاری ها",
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
              const NewsAgencyList(),
              const SliverToBoxAdapter(
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 10),
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
                        "پیشنهاد سردبیر",
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
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 35),
                sliver: SliverToBoxAdapter(
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
              ),
            ],
          ),
          Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            color: LightColors.redColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Marquee(
                  text:
                      ".کشتی های ایران را بزنند ما بیشتر می زنیم.   مبلغ دقیق عیدی کارمندان اعلام شد.  واکنش تند به اینتری شدن طارمی؛ او تمام احترامش را از دست داده است/ مهاجم ایرانی را بیرون کنید!",
                  style: const TextStyle(
                      fontFamily: "SM", fontSize: 16, color: Colors.white),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  velocity: 80.0,
                  pauseAfterRound: const Duration(seconds: 2),
                  startPadding: 10.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.decelerate,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: 100,
    centerTitle: true,
    title: Image.asset("images/app_bar_icon.png"),
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("images/icon_search.png"),
        ),
        Image.asset("images/icon_edit.png"),
      ],
    ),
  );
}

class NewsAgencyList extends StatelessWidget {
  const NewsAgencyList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> agencynames = ["زومیت", "دیجیاتو", "ورزش سه "];
    List<String> agencyimages = [
      "page_cover1.png",
      "page_cover2.png",
      "page_cover3.png",
    ];
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 185,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Agencies(
                  agencynames: agencynames[index],
                  agencyimages: agencyimages[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FeedLables extends StatefulWidget {
  const FeedLables({super.key});

  @override
  State<FeedLables> createState() => _FeedLablesState();
}

class _FeedLablesState extends State<FeedLables> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> lables = ["همه", "جهان", "ورزش", "تکنولوژی", "علم و دانش"];
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 25),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 36,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: (selectedIndex == index)
                              ? LightColors.lightPinkColor
                              : LightColors.whiteColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              lables[index],
                              style: TextStyle(
                                fontFamily: "SM",
                                fontSize: 12,
                                color: (selectedIndex == index)
                                    ? LightColors.redColor
                                    : LightColors.greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
