import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/common/app_assets.dart';
import 'package:islami/common/app_colors.dart';
import 'package:islami/tabs/hadith_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/time_tab.dart';

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
    return Scaffold(
      body: tabs[selectedIndex],
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
                  color: AppColors.white,
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
                  color: AppColors.white,
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
                  color: AppColors.white,
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
                  color: AppColors.white,
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
                  color: AppColors.white,
                ),
              )),
        ],
      ),
    );
  }
}
