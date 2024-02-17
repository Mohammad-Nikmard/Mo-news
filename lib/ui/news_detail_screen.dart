import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.whiteColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            getAppBar(context),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: DefaultTextStyle(
                            style: TextStyle(
                              fontFamily: "SM",
                              fontSize: 10,
                              color: LightColors.greyColor,
                            ),
                            child: Text(
                              "۵ دقیقه قبل",
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                        Container(
                          height: 26,
                          width: 117,
                          decoration: const BoxDecoration(
                            color: LightColors.redColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const DefaultTextStyle(
                                style: TextStyle(
                                    fontFamily: "SM",
                                    fontSize: 8,
                                    color: LightColors.whiteColor),
                                child: Text("خبرگذاری آخرین خبر"),
                              ),
                              const SizedBox(width: 7),
                              Image.asset("images/last_news_icon.png")
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const DefaultTextStyle(
                              style: TextStyle(
                                fontFamily: "SM",
                                fontSize: 10,
                                color: LightColors.greyColor,
                              ),
                              child: Text("پیشنهاد مونیوز"),
                            ),
                            const SizedBox(width: 5),
                            Image.asset("images/flash_circle_light.png"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید!",
                      style: Theme.of(context).textTheme.titleLarge,
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 36,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            Lable(
                              title: "ورزشی",
                            ),
                            Lable(
                              title: "لژیونر ها",
                            ),
                            Lable(
                              title: "فوتبال اروپا",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجم ایران بود با پاسخ منفی باشگاه پورتو مواجه شد و این بازیکن با وجود رویای بازی در لیگ برتر انگلیس فعلا در پرتغال ماندنی است.",
                      style: Theme.of(context).textTheme.titleMedium,
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            "بحث پیشنهاد باشگاه چلسی انگلیس به پورتو برای جذب مهدی طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه های اصلی هواداران دو تیم بود. این خبر در حالی رسانه ای شد که گفته میشد چلسی برای جذب طارمی مبلغ ۲۵ میلیون یورو را به پورتو پیشنهاد داده است.",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            "روزنامه «ابولا» پرتغال هم روز چهارشنبه این خبر را اعلام کرد و به دنبال آن بعضی از مطبوعات انگلیس و کشورهای دیگر هم پیشنهاد چلسی به طارمی را دنبال کردند.",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            "طارمی در لیگ قهرمانان دوفصل پیش اروپا و در دیدار مقابل چلسی عملکرد بی نظیری داشت و با یک گل قیچی برگردان پورتو را به پیروزی رساند. هرچند که نماینده پرتغال به خاطر مجموع نتایج بازی رفت و برگشت حذف شد. با این حال گل طارمی حتی تا یک قدمی انتخاب بهترین گل سال فیفا و دریافت جایزه «پوشکاش» هم پیش رفت.",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 2,
                      height: 296,
                      color: LightColors.redColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget getAppBar(BuildContext context) {
  return SliverAppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("images/arrow-right.png"),
        ),
      ),
    ],
    leadingWidth: 85,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image.asset('images/icon_menu.png'),
        ),
        Image.asset("images/icon_save.png")
      ],
    ),
    scrolledUnderElevation: 0,
    expandedHeight: 280,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(25),
      child: Container(
        height: 30,
        decoration: const BoxDecoration(
          color: LightColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 3.8,
              width: 75,
              decoration: const BoxDecoration(
                color: LightColors.greyColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    stretch: true,
    flexibleSpace: const FlexibleSpaceBar(
      background: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cover_hotnews1.png"),
          ),
        ),
      ),
    ),
  );
}

class Lable extends StatelessWidget {
  const Lable({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 36,
        decoration: const BoxDecoration(
          color: LightColors.lightPinkColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontFamily: "SM", fontSize: 10, color: LightColors.redColor),
              child: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
