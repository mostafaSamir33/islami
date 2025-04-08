import 'package:flutter/material.dart';
import 'package:islami/common/app_colors.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quran Tap',
        style: TextStyle(
            color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w400),
      ),
    );
  }
}
