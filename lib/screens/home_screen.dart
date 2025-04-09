import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/common/app_assets.dart';
import 'package:islami/common/app_colors.dart';

import '../tabs_of_home_screen/hadith_tab.dart';
import '../tabs_of_home_screen/quran_tab.dart';
import '../tabs_of_home_screen/radio_tab.dart';
import '../tabs_of_home_screen/sebha_tab.dart';
import '../tabs_of_home_screen/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = '/home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            tabs[selectedIndex],
            Align(
                alignment: Alignment(0, -1),
                child: Image.asset(
                  AppImages.islamiLogo,
                  width: width * 0.697,
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.quranIcon),
              label: 'Quran',
              activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(66))),
                child: SvgPicture.asset(
                  AppIcons.quranIcon,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.hadithIcon),
              label: 'Hadith',
              activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(66))),
                child: SvgPicture.asset(
                  AppIcons.hadithIcon,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.sebhaIcon),
              label: 'Sebha',
              activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(66))),
                child: SvgPicture.asset(
                  AppIcons.sebhaIcon,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.radioIcon),
              label: 'Radio',
              activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(66))),
                child: SvgPicture.asset(
                  AppIcons.radioIcon,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.timeIcon),
              label: 'Time',
              activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(66))),
                child: SvgPicture.asset(
                  AppIcons.timeIcon,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              )),
        ],
      ),
    );
  }
}
