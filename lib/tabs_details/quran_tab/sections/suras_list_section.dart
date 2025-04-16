import 'package:flutter/material.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_model.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_tile.dart';

import '../../../common/app_colors.dart';

class SurasListSection extends StatelessWidget {
  const SurasListSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: SuraModel.suras.length,
            itemBuilder: (context, index) =>
                SuraTile(suraModel: SuraModel.suras[index]),
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
