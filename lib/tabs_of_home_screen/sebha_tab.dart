import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sebha Tap',
        style: TextStyle(
            color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w400),
      ),
    );
  }
}
