import 'package:flutter/material.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_card.dart';
import 'package:islami/tabs_details/quran_tab/widgets/sura_model.dart';

import '../../../common/app_colors.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Most Recently',
            style: TextStyle(
                color: AppColors.offWhite,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: height * 0.17,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: SuraModel.suras.length,
            itemBuilder: (context, index) =>
                SuraCard(suraModel: SuraModel.suras[index]),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 10,
            ),
          ),
        )
      ],
    );
  }
}
