import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/common/app_assets.dart';
import 'package:islami/common/app_colors.dart';
import 'package:islami/tabs_details/quran_tab/sections/most_recently_section.dart';
import 'package:islami/tabs_details/quran_tab/sections/suras_list_section.dart';
import 'package:islami/tabs_details/quran_tab/widgets/custom_text_field.dart';
import 'package:islami/widgets/background_gradient_and_tab_details.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BackgroundGradientAndTabDetails(
        backgroundImage: AppImages.homeTabBackground,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomTextField(
                    hintText: 'Sura Name',
                    image: SvgPicture.asset(
                      AppIcons.quranIcon,
                      colorFilter:
                          ColorFilter.mode(AppColors.gold, BlendMode.srcIn),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView(
                    children: [
                      MostRecentlySection(),
                      SurasListSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        distanceBetweenIslamiLogoAndTabDetails: height * 0.162 + 20);
  }
}
