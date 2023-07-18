import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:estate_app/screens/home_screens/home_screen.dart';
import 'package:estate_app/screens/home_screens/profilescreen.dart';
import 'package:estate_app/widgets/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  //final autoSizeGroup = AutoSizeGroup();

  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  @override
  void initState() {
    super.initState();

    _fabAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    // fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    // borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
    //   borderRadiusCurve,
    // );

    _hideBottomBarAnimationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      Duration(seconds: 1),
      () => _fabAnimationController.forward(),
    );
    Future.delayed(
      Duration(seconds: 1),
      () => _borderRadiusAnimationController.forward(),
    );
  }

  // bool onScrollNotification(ScrollNotification notification) {
  //   if (notification is UserScrollNotification &&
  //       notification.metrics.axis == Axis.vertical) {
  //     switch (notification.direction) {
  //       case ScrollDirection.forward:
  //         _hideBottomBarAnimationController.reverse();
  //         _fabAnimationController.forward(from: 0);
  //         break;
  //       case ScrollDirection.reverse:
  //         _hideBottomBarAnimationController.forward();
  //         _fabAnimationController.reverse(from: 1);
  //         break;
  //       case ScrollDirection.idle:
  //         break;
  //     }
  //   }
  //   return false;
  // }

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).extension<CustomColorsTheme>()!;
    List barItems = [
      {
        "icons": Icons.home_outlined,
        "page": HomePage(),
        "title": "Home",
      },
      {
        "icons": Icons.search,
        "page": HomePage(),
        "title": "Search",
      }
    ];
    return Scaffold(
      extendBody: true,
      body: NotificationListener<ScrollNotification>(
        //onNotification: onScrollNotification,
        child: NavigationScreen(
          bottomNavIndex: _bottomNavIndex,
          baritem: barItems,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Color(0xff4285F4),
        child: Icon(
          Icons.person_2_outlined,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) =>
                ProfileScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: Tween(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: barItems.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Color(0xff4285F4) : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                barItems[index]['icons'],
                size: 24,
                color: color,
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  barItems[index]['title'],
                  maxLines: 1,
                  style: TextStyle(color: color),
                  //group: autoSizeGroup,
                ),
              )
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        //splashColor: Colors.blueAccent,
        //notchAndCornersAnimation: borderRadiusAnimation,
        splashSpeedInMilliseconds: 0,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        hideAnimationController: _hideBottomBarAnimationController,
        shadow: BoxShadow(
          offset: const Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Color(0xffD7DBE0),
        ),
      ),
    );
  }
}
