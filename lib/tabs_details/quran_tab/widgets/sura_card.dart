import 'package:flutter/material.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_model.dart';

import '../../../common/app_assets.dart';
import '../../../common/app_colors.dart';

class SuraCard extends StatelessWidget {
  final SuraModel suraModel;

  const SuraCard({super.key, required this.suraModel});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.17,
      width: width * 0.65,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 18),
        child: Stack(
          children: [
            Align(
              child: Image(
                image: AssetImage(AppImages.suraCardImage),
                width: width * 0.34,
              ),
              alignment: Alignment(1, 0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 6),
                  child: Text(
                    suraModel.suraNameEnglish,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    suraModel.suraNameArabic,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  '${suraModel.suraVerses} Verses',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
