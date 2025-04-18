import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/common/app_assets.dart';
import 'package:islami/common/app_colors.dart';
import 'package:islami/tabs_details/quran_tab/sections/most_recently_section.dart';
import 'package:islami/tabs_details/quran_tab/sections/suras_list_section.dart';
import 'package:islami/tabs_details/quran_tab/widgets/custom_text_field.dart';
import 'package:islami/widgets/background_gradient_and_tab_details.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  TextEditingController controller = TextEditingController();

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
                    onChanged: (p0) => setState(() {}),
                    controller: controller,
                    suffix: InkWell(
                      onTap: () {
                        controller.clear();
                        FocusScope.of(context).unfocus();
                        setState(() {});
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors.grey,
                      ),
                    ),
                    hintText: 'Sura Name',
                    image: SvgPicture.asset(
                      AppIcons.quranIcon,
                      colorFilter:
                          ColorFilter.mode(AppColors.gold, BlendMode.srcIn),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        MostRecentlySection(),
                        SurasListSection(
                          search: controller.text.trim(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        distanceBetweenIslamiLogoAndTabDetails: height * 0.162 + 20);
  }
}
