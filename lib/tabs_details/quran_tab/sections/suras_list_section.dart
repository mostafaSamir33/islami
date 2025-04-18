import 'package:flutter/material.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_model.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_tile.dart';

import '../../../common/app_colors.dart';

class SurasListSection extends StatelessWidget {
  final String? search;

  const SurasListSection({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    List<SuraModel> filterSuras = SuraModel.suras
        .where(
          (element) =>
              element.suraNameArabic.contains(search ?? '') ||
              element.suraNameEnglish
                  .toLowerCase()
                  .contains((search ?? '')
                  .toLowerCase()),
        )
        .toList();
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Suras List',
              style: TextStyle(
                  color: AppColors.offWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: filterSuras.length,
            itemBuilder: (context, index) =>
                SuraTile(suraModel: filterSuras[index]),
            separatorBuilder: (BuildContext context, int index) => Divider(
              endIndent: 50,
              indent: 40,
              thickness: 1,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
