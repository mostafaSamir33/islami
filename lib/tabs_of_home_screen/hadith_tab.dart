import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hadith Tap',
        style: TextStyle(
            color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w400),
      ),
    );
  }
}
