import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:full_fridge_app/screens/Home/home_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants/app_colors.dart';
import 'Accounts/accounts_screen.dart';
import 'Favourites/favourites_screen.dart';
import 'Fridge/fridge_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = const [
    HomeScreen(),
    FridgeScreen(),
    FavouritesScreen(),
    AccountsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var items = [
      CustomNavigationBarItem(
        icon: Icon(
          EvaIcons.homeOutline,
          color: AppColors.accentColor,
          size: 30,
        ),
      ),
      CustomNavigationBarItem(
        icon: WebsafeSvg.asset(
          'assets/icons/fridge.svg',
          width: 26,
          height: 26,
          color: AppColors.accentColor,
        ),
      ),
      CustomNavigationBarItem(
        icon: Icon(
          Icons.favorite_border,
          color: AppColors.accentColor,
          size: 30,
        ),
      ),
      CustomNavigationBarItem(
        icon: Icon(
          EvaIcons.personOutline,
          color: AppColors.accentColor,
          size: 30,
        ),
      ),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        body: screens[index],
        bottomNavigationBar: CustomNavigationBar(
          isFloating: true,
          items: items,
          currentIndex: index,
          onTap: (index) => setState(() => this.index = index),
        ),
        //  CurvedNavigationBar(
        //   items: items,
        //   // backgroundColor: Color.fromARGB(0, 0, 0, 0),
        //   color: AppColors.backgroundFieldsColor,
        //   height: 65,

        //   buttonBackgroundColor: AppColors.accentColor,
        //   animationCurve: Curves.easeInOut,
        //   animationDuration: const Duration(milliseconds: 300),
        //   key: navigationKey,
        // ),
      ),
    );
  }
}
