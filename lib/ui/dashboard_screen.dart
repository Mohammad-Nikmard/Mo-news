import 'package:flutter/material.dart';
import 'package:mo_news/constants/constants.dart';
import 'package:mo_news/ui/addpost_screen.dart';
import 'package:mo_news/ui/feed_screen.dart';
import 'package:mo_news/ui/home_screen.dart';
import 'package:mo_news/ui/profile_screen.dart';
import 'package:mo_news/ui/saved_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  DashBoardScreenState createState() => DashBoardScreenState();
}

class DashBoardScreenState extends State<DashBoardScreen> {
  var currentIndex = 0;

  @override
  void initState() {
    currentIndex = 4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Items(currentIndex: currentIndex, index: index),
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          ProfileScreen(),
          SavedScreen(),
          AddPostScreen(),
          FeedScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({super.key, required this.currentIndex, required this.index});
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.decelerate,
            margin: EdgeInsets.only(
              bottom: index == currentIndex ? 0 : size.width * .029,
              right: size.width * .0422,
              left: size.width * .0422,
            ),
            width: 36,
            height: index == currentIndex ? 6 : 0,
            decoration: BoxDecoration(
              color: LightColors.redColor,
              boxShadow: [
                BoxShadow(
                  color: (currentIndex == index)
                      ? LightColors.redColor
                      : Colors.transparent,
                  blurRadius: 20,
                  spreadRadius: -20,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
          ),
          (currentIndex == index)
              ? listOfActiveImages[index]
              : listOfImages[index],
          SizedBox(height: size.width * .03),
        ],
      ),
    );
  }

  List<Image> listOfImages = [
    Image.asset("images/icon_profile.png"),
    Image.asset("images/icon_save_bottomNavigation.png"),
    Image.asset("images/icon_bottomNavigation_add.png"),
    Image.asset("images/icon_discover.png"),
    Image.asset("images/icon_home.png"),
  ];

  List<Image> listOfActiveImages = [
    Image.asset("images/icon_profile.png"),
    Image.asset("images/icon_save_bottomNavigation.png"),
    Image.asset("images/icon_bottomNavigation_add.png"),
    Image.asset("images/active_icon_discover.png"),
    Image.asset("images/active_icon_home.png"),
  ];
}
