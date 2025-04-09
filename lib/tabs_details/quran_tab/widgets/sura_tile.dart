import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/app_assets.dart';
import '../../../common/app_colors.dart';

class SuraTile extends StatelessWidget {
  final String suraNameEnglish;
  final String suraNameArabic;
  final int suraVerses;
  final String suraArrangement;

  const SuraTile(
      {super.key,
      required this.suraNameEnglish,
      required this.suraNameArabic,
      required this.suraVerses,
      required this.suraArrangement});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Stack(
            children: [
              SvgPicture.asset(AppImages.suraVerse),
              Center(
                child: Text(
                  suraArrangement,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            suraNameEnglish,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        subtitle: Text(
          '$suraVerses Verses',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        trailing: Text(
          suraNameArabic,
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
